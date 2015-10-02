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
-- Module      : Network.Google.Resource.Logging.Projects.Logs.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a log and all its log entries. The log will reappear if it
-- receives new entries.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogsDelete@.
module Network.Google.Resource.Logging.Projects.Logs.Delete
    (
    -- * REST Resource
      ProjectsLogsDeleteResource

    -- * Creating a Request
    , projectsLogsDelete'
    , ProjectsLogsDelete'

    -- * Request Lenses
    , pldXgafv
    , pldQuotaUser
    , pldPrettyPrint
    , pldUploadProtocol
    , pldLogsId
    , pldPp
    , pldAccessToken
    , pldUploadType
    , pldBearerToken
    , pldKey
    , pldOauthToken
    , pldProjectsId
    , pldFields
    , pldCallback
    , pldAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsDelete@ which the
-- 'ProjectsLogsDelete'' request conforms to.
type ProjectsLogsDeleteResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logs" :>
             Capture "logsId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" Text :>
                                         Delete '[JSON] Empty

-- | Deletes a log and all its log entries. The log will reappear if it
-- receives new entries.
--
-- /See:/ 'projectsLogsDelete'' smart constructor.
data ProjectsLogsDelete' = ProjectsLogsDelete'
    { _pldXgafv          :: !(Maybe Text)
    , _pldQuotaUser      :: !(Maybe Text)
    , _pldPrettyPrint    :: !Bool
    , _pldUploadProtocol :: !(Maybe Text)
    , _pldLogsId         :: !Text
    , _pldPp             :: !Bool
    , _pldAccessToken    :: !(Maybe Text)
    , _pldUploadType     :: !(Maybe Text)
    , _pldBearerToken    :: !(Maybe Text)
    , _pldKey            :: !(Maybe Text)
    , _pldOauthToken     :: !(Maybe Text)
    , _pldProjectsId     :: !Text
    , _pldFields         :: !(Maybe Text)
    , _pldCallback       :: !(Maybe Text)
    , _pldAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldXgafv'
--
-- * 'pldQuotaUser'
--
-- * 'pldPrettyPrint'
--
-- * 'pldUploadProtocol'
--
-- * 'pldLogsId'
--
-- * 'pldPp'
--
-- * 'pldAccessToken'
--
-- * 'pldUploadType'
--
-- * 'pldBearerToken'
--
-- * 'pldKey'
--
-- * 'pldOauthToken'
--
-- * 'pldProjectsId'
--
-- * 'pldFields'
--
-- * 'pldCallback'
--
-- * 'pldAlt'
projectsLogsDelete'
    :: Text -- ^ 'logsId'
    -> Text -- ^ 'projectsId'
    -> ProjectsLogsDelete'
projectsLogsDelete' pPldLogsId_ pPldProjectsId_ =
    ProjectsLogsDelete'
    { _pldXgafv = Nothing
    , _pldQuotaUser = Nothing
    , _pldPrettyPrint = True
    , _pldUploadProtocol = Nothing
    , _pldLogsId = pPldLogsId_
    , _pldPp = True
    , _pldAccessToken = Nothing
    , _pldUploadType = Nothing
    , _pldBearerToken = Nothing
    , _pldKey = Nothing
    , _pldOauthToken = Nothing
    , _pldProjectsId = pPldProjectsId_
    , _pldFields = Nothing
    , _pldCallback = Nothing
    , _pldAlt = "json"
    }

-- | V1 error format.
pldXgafv :: Lens' ProjectsLogsDelete' (Maybe Text)
pldXgafv = lens _pldXgafv (\ s a -> s{_pldXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pldQuotaUser :: Lens' ProjectsLogsDelete' (Maybe Text)
pldQuotaUser
  = lens _pldQuotaUser (\ s a -> s{_pldQuotaUser = a})

-- | Returns response with indentations and line breaks.
pldPrettyPrint :: Lens' ProjectsLogsDelete' Bool
pldPrettyPrint
  = lens _pldPrettyPrint
      (\ s a -> s{_pldPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldUploadProtocol :: Lens' ProjectsLogsDelete' (Maybe Text)
pldUploadProtocol
  = lens _pldUploadProtocol
      (\ s a -> s{_pldUploadProtocol = a})

-- | Part of \`logName\`. See documentation of \`projectsId\`.
pldLogsId :: Lens' ProjectsLogsDelete' Text
pldLogsId
  = lens _pldLogsId (\ s a -> s{_pldLogsId = a})

-- | Pretty-print response.
pldPp :: Lens' ProjectsLogsDelete' Bool
pldPp = lens _pldPp (\ s a -> s{_pldPp = a})

-- | OAuth access token.
pldAccessToken :: Lens' ProjectsLogsDelete' (Maybe Text)
pldAccessToken
  = lens _pldAccessToken
      (\ s a -> s{_pldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldUploadType :: Lens' ProjectsLogsDelete' (Maybe Text)
pldUploadType
  = lens _pldUploadType
      (\ s a -> s{_pldUploadType = a})

-- | OAuth bearer token.
pldBearerToken :: Lens' ProjectsLogsDelete' (Maybe Text)
pldBearerToken
  = lens _pldBearerToken
      (\ s a -> s{_pldBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pldKey :: Lens' ProjectsLogsDelete' (Maybe Text)
pldKey = lens _pldKey (\ s a -> s{_pldKey = a})

-- | OAuth 2.0 token for the current user.
pldOauthToken :: Lens' ProjectsLogsDelete' (Maybe Text)
pldOauthToken
  = lens _pldOauthToken
      (\ s a -> s{_pldOauthToken = a})

-- | Part of \`logName\`. The resource name of the log to be deleted.
pldProjectsId :: Lens' ProjectsLogsDelete' Text
pldProjectsId
  = lens _pldProjectsId
      (\ s a -> s{_pldProjectsId = a})

-- | Selector specifying which fields to include in a partial response.
pldFields :: Lens' ProjectsLogsDelete' (Maybe Text)
pldFields
  = lens _pldFields (\ s a -> s{_pldFields = a})

-- | JSONP
pldCallback :: Lens' ProjectsLogsDelete' (Maybe Text)
pldCallback
  = lens _pldCallback (\ s a -> s{_pldCallback = a})

-- | Data format for response.
pldAlt :: Lens' ProjectsLogsDelete' Text
pldAlt = lens _pldAlt (\ s a -> s{_pldAlt = a})

instance GoogleRequest ProjectsLogsDelete' where
        type Rs ProjectsLogsDelete' = Empty
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogsDelete'{..}
          = go _pldXgafv _pldQuotaUser (Just _pldPrettyPrint)
              _pldUploadProtocol
              _pldLogsId
              (Just _pldPp)
              _pldAccessToken
              _pldUploadType
              _pldBearerToken
              _pldKey
              _pldOauthToken
              _pldProjectsId
              _pldFields
              _pldCallback
              (Just _pldAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogsDeleteResource)
                      r
                      u