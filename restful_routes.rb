     Prefix Verb   URI Pattern                                     Controller#Action
                users GET    /users(.:format)                                users#index
                      POST   /users(.:format)                                users#create
             new_user GET    /users/new(.:format)                            users#new
            edit_user GET    /users/:id/edit(.:format)                       users#edit
                 user GET    /users/:id(.:format)                            users#show
                      PATCH  /users/:id(.:format)                            users#update
                      PUT    /users/:id(.:format)                            users#update
                      DELETE /users/:id(.:format)                            users#destroy
    post_postcomments GET    /posts/:post_id/postcomments(.:format)          postcomments#index
                      POST   /posts/:post_id/postcomments(.:format)          postcomments#create
 new_post_postcomment GET    /posts/:post_id/postcomments/new(.:format)      postcomments#new
edit_post_postcomment GET    /posts/:post_id/postcomments/:id/edit(.:format) postcomments#edit
     post_postcomment GET    /posts/:post_id/postcomments/:id(.:format)      postcomments#show
                      PATCH  /posts/:post_id/postcomments/:id(.:format)      postcomments#update
                      PUT    /posts/:post_id/postcomments/:id(.:format)      postcomments#update
                      DELETE /posts/:post_id/postcomments/:id(.:format)      postcomments#destroy
                posts GET    /posts(.:format)                                posts#index
                      POST   /posts(.:format)                                posts#create
             new_post GET    /posts/new(.:format)                            posts#new
            edit_post GET    /posts/:id/edit(.:format)                       posts#edit
                 post GET    /posts/:id(.:format)                            posts#show
                      PATCH  /posts/:id(.:format)                            posts#update
                      PUT    /posts/:id(.:format)                            posts#update
                      DELETE /posts/:id(.:format)                            posts#destroy
          friendships GET    /friendships(.:format)                          friendships#index
                      POST   /friendships(.:format)                          friendships#create
       new_friendship GET    /friendships/new(.:format)                      friendships#new
      edit_friendship GET    /friendships/:id/edit(.:format)                 friendships#edit
           friendship GET    /friendships/:id(.:format)                      friendships#show
                      PATCH  /friendships/:id(.:format)                      friendships#update
                      PUT    /friendships/:id(.:format)                      friendships#update
                      DELETE /friendships/:id(.:format)                      friendships#destroy
                login GET    /login(.:format)                                sessions#new
                      POST   /login(.:format)                                sessions#create
               logout GET    /logout(.:format)                               sessions#destroy
                 root GET    /                                               users#index
