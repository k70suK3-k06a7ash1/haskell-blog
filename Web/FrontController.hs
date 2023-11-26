module Web.FrontController where

import IHP.RouterPrelude
import Web.Controller.Prelude

import Web.View.Layout (defaultLayout)

-- Controller Imports
import Web.Controller.Static
import Web.Controller.Posts

instance FrontController WebApplication where
    controllers = 
        [ 
         startPage WelcomeAction
        , parseRoute @PostsController

        -- Generator Marker
        -- , parseRoute @PostsController
        ]

instance InitControllerContext WebApplication where
    initContext = do
        setLayout defaultLayout
        initAutoRefresh
