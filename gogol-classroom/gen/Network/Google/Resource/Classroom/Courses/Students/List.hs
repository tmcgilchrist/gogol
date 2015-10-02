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
-- Module      : Network.Google.Resource.Classroom.Courses.Students.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of students of this course that the requester is
-- permitted to view. This method returns the following error codes: *
-- \`NOT_FOUND\` if the course does not exist. * \`PERMISSION_DENIED\` for
-- [general user permission errors][User Permission Errors].
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesStudentsList@.
module Network.Google.Resource.Classroom.Courses.Students.List
    (
    -- * REST Resource
      CoursesStudentsListResource

    -- * Creating a Request
    , coursesStudentsList'
    , CoursesStudentsList'

    -- * Request Lenses
    , cslXgafv
    , cslQuotaUser
    , cslPrettyPrint
    , cslUploadProtocol
    , cslPp
    , cslCourseId
    , cslAccessToken
    , cslUploadType
    , cslBearerToken
    , cslKey
    , cslPageToken
    , cslOauthToken
    , cslPageSize
    , cslFields
    , cslCallback
    , cslAlt
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesStudentsList@ which the
-- 'CoursesStudentsList'' request conforms to.
type CoursesStudentsListResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "students" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "key" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "pageSize" Int32 :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" Text :>
                                           Get '[JSON] ListStudentsResponse

-- | Returns a list of students of this course that the requester is
-- permitted to view. This method returns the following error codes: *
-- \`NOT_FOUND\` if the course does not exist. * \`PERMISSION_DENIED\` for
-- [general user permission errors][User Permission Errors].
--
-- /See:/ 'coursesStudentsList'' smart constructor.
data CoursesStudentsList' = CoursesStudentsList'
    { _cslXgafv          :: !(Maybe Text)
    , _cslQuotaUser      :: !(Maybe Text)
    , _cslPrettyPrint    :: !Bool
    , _cslUploadProtocol :: !(Maybe Text)
    , _cslPp             :: !Bool
    , _cslCourseId       :: !Text
    , _cslAccessToken    :: !(Maybe Text)
    , _cslUploadType     :: !(Maybe Text)
    , _cslBearerToken    :: !(Maybe Text)
    , _cslKey            :: !(Maybe Text)
    , _cslPageToken      :: !(Maybe Text)
    , _cslOauthToken     :: !(Maybe Text)
    , _cslPageSize       :: !(Maybe Int32)
    , _cslFields         :: !(Maybe Text)
    , _cslCallback       :: !(Maybe Text)
    , _cslAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesStudentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslXgafv'
--
-- * 'cslQuotaUser'
--
-- * 'cslPrettyPrint'
--
-- * 'cslUploadProtocol'
--
-- * 'cslPp'
--
-- * 'cslCourseId'
--
-- * 'cslAccessToken'
--
-- * 'cslUploadType'
--
-- * 'cslBearerToken'
--
-- * 'cslKey'
--
-- * 'cslPageToken'
--
-- * 'cslOauthToken'
--
-- * 'cslPageSize'
--
-- * 'cslFields'
--
-- * 'cslCallback'
--
-- * 'cslAlt'
coursesStudentsList'
    :: Text -- ^ 'courseId'
    -> CoursesStudentsList'
coursesStudentsList' pCslCourseId_ =
    CoursesStudentsList'
    { _cslXgafv = Nothing
    , _cslQuotaUser = Nothing
    , _cslPrettyPrint = True
    , _cslUploadProtocol = Nothing
    , _cslPp = True
    , _cslCourseId = pCslCourseId_
    , _cslAccessToken = Nothing
    , _cslUploadType = Nothing
    , _cslBearerToken = Nothing
    , _cslKey = Nothing
    , _cslPageToken = Nothing
    , _cslOauthToken = Nothing
    , _cslPageSize = Nothing
    , _cslFields = Nothing
    , _cslCallback = Nothing
    , _cslAlt = "json"
    }

-- | V1 error format.
cslXgafv :: Lens' CoursesStudentsList' (Maybe Text)
cslXgafv = lens _cslXgafv (\ s a -> s{_cslXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cslQuotaUser :: Lens' CoursesStudentsList' (Maybe Text)
cslQuotaUser
  = lens _cslQuotaUser (\ s a -> s{_cslQuotaUser = a})

-- | Returns response with indentations and line breaks.
cslPrettyPrint :: Lens' CoursesStudentsList' Bool
cslPrettyPrint
  = lens _cslPrettyPrint
      (\ s a -> s{_cslPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cslUploadProtocol :: Lens' CoursesStudentsList' (Maybe Text)
cslUploadProtocol
  = lens _cslUploadProtocol
      (\ s a -> s{_cslUploadProtocol = a})

-- | Pretty-print response.
cslPp :: Lens' CoursesStudentsList' Bool
cslPp = lens _cslPp (\ s a -> s{_cslPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
cslCourseId :: Lens' CoursesStudentsList' Text
cslCourseId
  = lens _cslCourseId (\ s a -> s{_cslCourseId = a})

-- | OAuth access token.
cslAccessToken :: Lens' CoursesStudentsList' (Maybe Text)
cslAccessToken
  = lens _cslAccessToken
      (\ s a -> s{_cslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cslUploadType :: Lens' CoursesStudentsList' (Maybe Text)
cslUploadType
  = lens _cslUploadType
      (\ s a -> s{_cslUploadType = a})

-- | OAuth bearer token.
cslBearerToken :: Lens' CoursesStudentsList' (Maybe Text)
cslBearerToken
  = lens _cslBearerToken
      (\ s a -> s{_cslBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cslKey :: Lens' CoursesStudentsList' (Maybe Text)
cslKey = lens _cslKey (\ s a -> s{_cslKey = a})

-- | [nextPageToken][google.classroom.v1.ListStudentsResponse.next_page_token]
-- value returned from a previous
-- [list][google.classroom.v1.Users.ListStudents] call, indicating that the
-- subsequent page of results should be returned. The
-- [list][google.classroom.v1.Users.ListStudents] request must be otherwise
-- identical to the one that resulted in this token.
cslPageToken :: Lens' CoursesStudentsList' (Maybe Text)
cslPageToken
  = lens _cslPageToken (\ s a -> s{_cslPageToken = a})

-- | OAuth 2.0 token for the current user.
cslOauthToken :: Lens' CoursesStudentsList' (Maybe Text)
cslOauthToken
  = lens _cslOauthToken
      (\ s a -> s{_cslOauthToken = a})

-- | Maximum number of items to return. Zero means no maximum. The server may
-- return fewer than the specified number of results.
cslPageSize :: Lens' CoursesStudentsList' (Maybe Int32)
cslPageSize
  = lens _cslPageSize (\ s a -> s{_cslPageSize = a})

-- | Selector specifying which fields to include in a partial response.
cslFields :: Lens' CoursesStudentsList' (Maybe Text)
cslFields
  = lens _cslFields (\ s a -> s{_cslFields = a})

-- | JSONP
cslCallback :: Lens' CoursesStudentsList' (Maybe Text)
cslCallback
  = lens _cslCallback (\ s a -> s{_cslCallback = a})

-- | Data format for response.
cslAlt :: Lens' CoursesStudentsList' Text
cslAlt = lens _cslAlt (\ s a -> s{_cslAlt = a})

instance GoogleRequest CoursesStudentsList' where
        type Rs CoursesStudentsList' = ListStudentsResponse
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u CoursesStudentsList'{..}
          = go _cslXgafv _cslQuotaUser (Just _cslPrettyPrint)
              _cslUploadProtocol
              (Just _cslPp)
              _cslCourseId
              _cslAccessToken
              _cslUploadType
              _cslBearerToken
              _cslKey
              _cslPageToken
              _cslOauthToken
              _cslPageSize
              _cslFields
              _cslCallback
              (Just _cslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CoursesStudentsListResource)
                      r
                      u