module Web.Controller.Posts where
import Web.Controller.Prelude
import Web.View.Static.Hello

instance Controller PostsController where
    action PostsAction = render HelloView

