{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Blogs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one blog by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerBlogsGet@.
module Network.Google.Resource.Blogger.Blogs.Get
    (
    -- * REST Resource
      BlogsGetResource

    -- * Creating a Request
    , blogsGet'
    , BlogsGet'

    -- * Request Lenses
    , bgQuotaUser
    , bgPrettyPrint
    , bgUserIp
    , bgBlogId
    , bgKey
    , bgMaxPosts
    , bgView
    , bgOauthToken
    , bgFields
    , bgAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerBlogsGet@ which the
-- 'BlogsGet'' request conforms to.
type BlogsGetResource =
     "blogs" :>
       Capture "blogId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "maxPosts" Word32 :>
                   QueryParam "view" BloggerBlogsGetView :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Blog

-- | Gets one blog by ID.
--
-- /See:/ 'blogsGet'' smart constructor.
data BlogsGet' = BlogsGet'
    { _bgQuotaUser   :: !(Maybe Text)
    , _bgPrettyPrint :: !Bool
    , _bgUserIp      :: !(Maybe Text)
    , _bgBlogId      :: !Text
    , _bgKey         :: !(Maybe Text)
    , _bgMaxPosts    :: !(Maybe Word32)
    , _bgView        :: !(Maybe BloggerBlogsGetView)
    , _bgOauthToken  :: !(Maybe Text)
    , _bgFields      :: !(Maybe Text)
    , _bgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgQuotaUser'
--
-- * 'bgPrettyPrint'
--
-- * 'bgUserIp'
--
-- * 'bgBlogId'
--
-- * 'bgKey'
--
-- * 'bgMaxPosts'
--
-- * 'bgView'
--
-- * 'bgOauthToken'
--
-- * 'bgFields'
--
-- * 'bgAlt'
blogsGet'
    :: Text -- ^ 'blogId'
    -> BlogsGet'
blogsGet' pBgBlogId_ =
    BlogsGet'
    { _bgQuotaUser = Nothing
    , _bgPrettyPrint = True
    , _bgUserIp = Nothing
    , _bgBlogId = pBgBlogId_
    , _bgKey = Nothing
    , _bgMaxPosts = Nothing
    , _bgView = Nothing
    , _bgOauthToken = Nothing
    , _bgFields = Nothing
    , _bgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bgQuotaUser :: Lens' BlogsGet' (Maybe Text)
bgQuotaUser
  = lens _bgQuotaUser (\ s a -> s{_bgQuotaUser = a})

-- | Returns response with indentations and line breaks.
bgPrettyPrint :: Lens' BlogsGet' Bool
bgPrettyPrint
  = lens _bgPrettyPrint
      (\ s a -> s{_bgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bgUserIp :: Lens' BlogsGet' (Maybe Text)
bgUserIp = lens _bgUserIp (\ s a -> s{_bgUserIp = a})

-- | The ID of the blog to get.
bgBlogId :: Lens' BlogsGet' Text
bgBlogId = lens _bgBlogId (\ s a -> s{_bgBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bgKey :: Lens' BlogsGet' (Maybe Text)
bgKey = lens _bgKey (\ s a -> s{_bgKey = a})

-- | Maximum number of posts to pull back with the blog.
bgMaxPosts :: Lens' BlogsGet' (Maybe Word32)
bgMaxPosts
  = lens _bgMaxPosts (\ s a -> s{_bgMaxPosts = a})

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
bgView :: Lens' BlogsGet' (Maybe BloggerBlogsGetView)
bgView = lens _bgView (\ s a -> s{_bgView = a})

-- | OAuth 2.0 token for the current user.
bgOauthToken :: Lens' BlogsGet' (Maybe Text)
bgOauthToken
  = lens _bgOauthToken (\ s a -> s{_bgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bgFields :: Lens' BlogsGet' (Maybe Text)
bgFields = lens _bgFields (\ s a -> s{_bgFields = a})

-- | Data format for the response.
bgAlt :: Lens' BlogsGet' Alt
bgAlt = lens _bgAlt (\ s a -> s{_bgAlt = a})

instance GoogleRequest BlogsGet' where
        type Rs BlogsGet' = Blog
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u BlogsGet'{..}
          = go _bgQuotaUser (Just _bgPrettyPrint) _bgUserIp
              _bgBlogId
              _bgKey
              _bgMaxPosts
              _bgView
              _bgOauthToken
              _bgFields
              (Just _bgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy BlogsGetResource) r
                      u