module Web.FrontController where

import IHP.RouterPrelude
import Web.Controller.Prelude

import Web.View.Layout (defaultLayout)

-- Controller Imports
import Web.Controller.Articles
import Web.Controller.Posts
import Web.Controller.Static
import Web.Controller.Posts

instance FrontController WebApplication where
    controllers = 
        [ 
         startPage WelcomeAction
        , parseRoute @PostsController
        , parseRoute @ArticlesController
        ]

instance InitControllerContext WebApplication where
    initContext = do
        setLayout defaultLayout
        initAutoRefresh
