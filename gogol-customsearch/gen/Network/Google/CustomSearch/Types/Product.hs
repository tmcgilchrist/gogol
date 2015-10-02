{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CustomSearch.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CustomSearch.Types.Product where

import           Network.Google.CustomSearch.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'promotionImage' smart constructor.
data PromotionImage = PromotionImage
    { _piHeight :: !(Maybe Int32)
    , _piWidth  :: !(Maybe Int32)
    , _piSource :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromotionImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piHeight'
--
-- * 'piWidth'
--
-- * 'piSource'
promotionImage
    :: PromotionImage
promotionImage =
    PromotionImage
    { _piHeight = Nothing
    , _piWidth = Nothing
    , _piSource = Nothing
    }

piHeight :: Lens' PromotionImage (Maybe Int32)
piHeight = lens _piHeight (\ s a -> s{_piHeight = a})

piWidth :: Lens' PromotionImage (Maybe Int32)
piWidth = lens _piWidth (\ s a -> s{_piWidth = a})

piSource :: Lens' PromotionImage (Maybe Text)
piSource = lens _piSource (\ s a -> s{_piSource = a})

instance FromJSON PromotionImage where
        parseJSON
          = withObject "PromotionImage"
              (\ o ->
                 PromotionImage <$>
                   (o .:? "height") <*> (o .:? "width") <*>
                     (o .:? "source"))

instance ToJSON PromotionImage where
        toJSON PromotionImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _piHeight,
                  ("width" .=) <$> _piWidth,
                  ("source" .=) <$> _piSource])

--
-- /See:/ 'context' smart constructor.
data Context = Context
    { _cFacets :: !(Maybe [[ContextFacets]])
    , _cTitle  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Context' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cFacets'
--
-- * 'cTitle'
context
    :: Context
context =
    Context
    { _cFacets = Nothing
    , _cTitle = Nothing
    }

cFacets :: Lens' Context [[ContextFacets]]
cFacets
  = lens _cFacets (\ s a -> s{_cFacets = a}) . _Default
      . _Coerce

cTitle :: Lens' Context (Maybe Text)
cTitle = lens _cTitle (\ s a -> s{_cTitle = a})

instance FromJSON Context where
        parseJSON
          = withObject "Context"
              (\ o ->
                 Context <$>
                   (o .:? "facets" .!= mempty) <*> (o .:? "title"))

instance ToJSON Context where
        toJSON Context{..}
          = object
              (catMaybes
                 [("facets" .=) <$> _cFacets,
                  ("title" .=) <$> _cTitle])

--
-- /See:/ 'searchQueries' smart constructor.
data SearchQueries =
    SearchQueries
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchQueries' with the minimum fields required to make a request.
--
searchQueries
    :: SearchQueries
searchQueries = SearchQueries

instance FromJSON SearchQueries where
        parseJSON
          = withObject "SearchQueries"
              (\ o -> pure SearchQueries)

instance ToJSON SearchQueries where
        toJSON = const (Object mempty)

--
-- /See:/ 'searchURL' smart constructor.
data SearchURL = SearchURL
    { _suType     :: !Text
    , _suTemplate :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suType'
--
-- * 'suTemplate'
searchURL
    :: SearchURL
searchURL =
    SearchURL
    { _suType = "application/json"
    , _suTemplate = "https://www.googleapis.com/customsearch/v1?q={searchTerms}&num={count?}&start={startIndex?}&lr={language?}&safe={safe?}&cx={cx?}&cref={cref?}&sort={sort?}&filter={filter?}&gl={gl?}&cr={cr?}&googlehost={googleHost?}&c2coff={disableCnTwTranslation?}&hq={hq?}&hl={hl?}&siteSearch={siteSearch?}&siteSearchFilter={siteSearchFilter?}&exactTerms={exactTerms?}&excludeTerms={excludeTerms?}&linkSite={linkSite?}&orTerms={orTerms?}&relatedSite={relatedSite?}&dateRestrict={dateRestrict?}&lowRange={lowRange?}&highRange={highRange?}&searchType={searchType}&fileType={fileType?}&rights={rights?}&imgSize={imgSize?}&imgType={imgType?}&imgColorType={imgColorType?}&imgDominantColor={imgDominantColor?}&alt=json"
    }

suType :: Lens' SearchURL Text
suType = lens _suType (\ s a -> s{_suType = a})

suTemplate :: Lens' SearchURL Text
suTemplate
  = lens _suTemplate (\ s a -> s{_suTemplate = a})

instance FromJSON SearchURL where
        parseJSON
          = withObject "SearchURL"
              (\ o ->
                 SearchURL <$>
                   (o .:? "type" .!= "application/json") <*>
                     (o .:? "template" .!=
                        "https://www.googleapis.com/customsearch/v1?q={searchTerms}&num={count?}&start={startIndex?}&lr={language?}&safe={safe?}&cx={cx?}&cref={cref?}&sort={sort?}&filter={filter?}&gl={gl?}&cr={cr?}&googlehost={googleHost?}&c2coff={disableCnTwTranslation?}&hq={hq?}&hl={hl?}&siteSearch={siteSearch?}&siteSearchFilter={siteSearchFilter?}&exactTerms={exactTerms?}&excludeTerms={excludeTerms?}&linkSite={linkSite?}&orTerms={orTerms?}&relatedSite={relatedSite?}&dateRestrict={dateRestrict?}&lowRange={lowRange?}&highRange={highRange?}&searchType={searchType}&fileType={fileType?}&rights={rights?}&imgSize={imgSize?}&imgType={imgType?}&imgColorType={imgColorType?}&imgDominantColor={imgDominantColor?}&alt=json"))

instance ToJSON SearchURL where
        toJSON SearchURL{..}
          = object
              (catMaybes
                 [Just ("type" .= _suType),
                  Just ("template" .= _suTemplate)])

--
-- /See:/ 'searchSpelling' smart constructor.
data SearchSpelling = SearchSpelling
    { _ssCorrectedQuery     :: !(Maybe Text)
    , _ssHtmlCorrectedQuery :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchSpelling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssCorrectedQuery'
--
-- * 'ssHtmlCorrectedQuery'
searchSpelling
    :: SearchSpelling
searchSpelling =
    SearchSpelling
    { _ssCorrectedQuery = Nothing
    , _ssHtmlCorrectedQuery = Nothing
    }

ssCorrectedQuery :: Lens' SearchSpelling (Maybe Text)
ssCorrectedQuery
  = lens _ssCorrectedQuery
      (\ s a -> s{_ssCorrectedQuery = a})

ssHtmlCorrectedQuery :: Lens' SearchSpelling (Maybe Text)
ssHtmlCorrectedQuery
  = lens _ssHtmlCorrectedQuery
      (\ s a -> s{_ssHtmlCorrectedQuery = a})

instance FromJSON SearchSpelling where
        parseJSON
          = withObject "SearchSpelling"
              (\ o ->
                 SearchSpelling <$>
                   (o .:? "correctedQuery") <*>
                     (o .:? "htmlCorrectedQuery"))

instance ToJSON SearchSpelling where
        toJSON SearchSpelling{..}
          = object
              (catMaybes
                 [("correctedQuery" .=) <$> _ssCorrectedQuery,
                  ("htmlCorrectedQuery" .=) <$> _ssHtmlCorrectedQuery])

--
-- /See:/ 'resultPagemap' smart constructor.
data ResultPagemap =
    ResultPagemap
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultPagemap' with the minimum fields required to make a request.
--
resultPagemap
    :: ResultPagemap
resultPagemap = ResultPagemap

instance FromJSON ResultPagemap where
        parseJSON
          = withObject "ResultPagemap"
              (\ o -> pure ResultPagemap)

instance ToJSON ResultPagemap where
        toJSON = const (Object mempty)

--
-- /See:/ 'resultImage' smart constructor.
data ResultImage = ResultImage
    { _riThumbnailLink   :: !(Maybe Text)
    , _riHeight          :: !(Maybe Int32)
    , _riByteSize        :: !(Maybe Int32)
    , _riContextLink     :: !(Maybe Text)
    , _riThumbnailHeight :: !(Maybe Int32)
    , _riWidth           :: !(Maybe Int32)
    , _riThumbnailWidth  :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riThumbnailLink'
--
-- * 'riHeight'
--
-- * 'riByteSize'
--
-- * 'riContextLink'
--
-- * 'riThumbnailHeight'
--
-- * 'riWidth'
--
-- * 'riThumbnailWidth'
resultImage
    :: ResultImage
resultImage =
    ResultImage
    { _riThumbnailLink = Nothing
    , _riHeight = Nothing
    , _riByteSize = Nothing
    , _riContextLink = Nothing
    , _riThumbnailHeight = Nothing
    , _riWidth = Nothing
    , _riThumbnailWidth = Nothing
    }

riThumbnailLink :: Lens' ResultImage (Maybe Text)
riThumbnailLink
  = lens _riThumbnailLink
      (\ s a -> s{_riThumbnailLink = a})

riHeight :: Lens' ResultImage (Maybe Int32)
riHeight = lens _riHeight (\ s a -> s{_riHeight = a})

riByteSize :: Lens' ResultImage (Maybe Int32)
riByteSize
  = lens _riByteSize (\ s a -> s{_riByteSize = a})

riContextLink :: Lens' ResultImage (Maybe Text)
riContextLink
  = lens _riContextLink
      (\ s a -> s{_riContextLink = a})

riThumbnailHeight :: Lens' ResultImage (Maybe Int32)
riThumbnailHeight
  = lens _riThumbnailHeight
      (\ s a -> s{_riThumbnailHeight = a})

riWidth :: Lens' ResultImage (Maybe Int32)
riWidth = lens _riWidth (\ s a -> s{_riWidth = a})

riThumbnailWidth :: Lens' ResultImage (Maybe Int32)
riThumbnailWidth
  = lens _riThumbnailWidth
      (\ s a -> s{_riThumbnailWidth = a})

instance FromJSON ResultImage where
        parseJSON
          = withObject "ResultImage"
              (\ o ->
                 ResultImage <$>
                   (o .:? "thumbnailLink") <*> (o .:? "height") <*>
                     (o .:? "byteSize")
                     <*> (o .:? "contextLink")
                     <*> (o .:? "thumbnailHeight")
                     <*> (o .:? "width")
                     <*> (o .:? "thumbnailWidth"))

instance ToJSON ResultImage where
        toJSON ResultImage{..}
          = object
              (catMaybes
                 [("thumbnailLink" .=) <$> _riThumbnailLink,
                  ("height" .=) <$> _riHeight,
                  ("byteSize" .=) <$> _riByteSize,
                  ("contextLink" .=) <$> _riContextLink,
                  ("thumbnailHeight" .=) <$> _riThumbnailHeight,
                  ("width" .=) <$> _riWidth,
                  ("thumbnailWidth" .=) <$> _riThumbnailWidth])

--
-- /See:/ 'result' smart constructor.
data Result = Result
    { _rMime             :: !(Maybe Text)
    , _rImage            :: !(Maybe ResultImage)
    , _rPagemap          :: !(Maybe ResultPagemap)
    , _rDisplayLink      :: !(Maybe Text)
    , _rFileFormat       :: !(Maybe Text)
    , _rSnippet          :: !(Maybe Text)
    , _rKind             :: !Text
    , _rLink             :: !(Maybe Text)
    , _rHtmlSnippet      :: !(Maybe Text)
    , _rHtmlFormattedUrl :: !(Maybe Text)
    , _rCacheId          :: !(Maybe Text)
    , _rFormattedUrl     :: !(Maybe Text)
    , _rHtmlTitle        :: !(Maybe Text)
    , _rLabels           :: !(Maybe [ResultLabels])
    , _rTitle            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Result' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rMime'
--
-- * 'rImage'
--
-- * 'rPagemap'
--
-- * 'rDisplayLink'
--
-- * 'rFileFormat'
--
-- * 'rSnippet'
--
-- * 'rKind'
--
-- * 'rLink'
--
-- * 'rHtmlSnippet'
--
-- * 'rHtmlFormattedUrl'
--
-- * 'rCacheId'
--
-- * 'rFormattedUrl'
--
-- * 'rHtmlTitle'
--
-- * 'rLabels'
--
-- * 'rTitle'
result
    :: Result
result =
    Result
    { _rMime = Nothing
    , _rImage = Nothing
    , _rPagemap = Nothing
    , _rDisplayLink = Nothing
    , _rFileFormat = Nothing
    , _rSnippet = Nothing
    , _rKind = "customsearch#result"
    , _rLink = Nothing
    , _rHtmlSnippet = Nothing
    , _rHtmlFormattedUrl = Nothing
    , _rCacheId = Nothing
    , _rFormattedUrl = Nothing
    , _rHtmlTitle = Nothing
    , _rLabels = Nothing
    , _rTitle = Nothing
    }

rMime :: Lens' Result (Maybe Text)
rMime = lens _rMime (\ s a -> s{_rMime = a})

rImage :: Lens' Result (Maybe ResultImage)
rImage = lens _rImage (\ s a -> s{_rImage = a})

rPagemap :: Lens' Result (Maybe ResultPagemap)
rPagemap = lens _rPagemap (\ s a -> s{_rPagemap = a})

rDisplayLink :: Lens' Result (Maybe Text)
rDisplayLink
  = lens _rDisplayLink (\ s a -> s{_rDisplayLink = a})

rFileFormat :: Lens' Result (Maybe Text)
rFileFormat
  = lens _rFileFormat (\ s a -> s{_rFileFormat = a})

rSnippet :: Lens' Result (Maybe Text)
rSnippet = lens _rSnippet (\ s a -> s{_rSnippet = a})

rKind :: Lens' Result Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

rLink :: Lens' Result (Maybe Text)
rLink = lens _rLink (\ s a -> s{_rLink = a})

rHtmlSnippet :: Lens' Result (Maybe Text)
rHtmlSnippet
  = lens _rHtmlSnippet (\ s a -> s{_rHtmlSnippet = a})

rHtmlFormattedUrl :: Lens' Result (Maybe Text)
rHtmlFormattedUrl
  = lens _rHtmlFormattedUrl
      (\ s a -> s{_rHtmlFormattedUrl = a})

rCacheId :: Lens' Result (Maybe Text)
rCacheId = lens _rCacheId (\ s a -> s{_rCacheId = a})

rFormattedUrl :: Lens' Result (Maybe Text)
rFormattedUrl
  = lens _rFormattedUrl
      (\ s a -> s{_rFormattedUrl = a})

rHtmlTitle :: Lens' Result (Maybe Text)
rHtmlTitle
  = lens _rHtmlTitle (\ s a -> s{_rHtmlTitle = a})

rLabels :: Lens' Result [ResultLabels]
rLabels
  = lens _rLabels (\ s a -> s{_rLabels = a}) . _Default
      . _Coerce

rTitle :: Lens' Result (Maybe Text)
rTitle = lens _rTitle (\ s a -> s{_rTitle = a})

instance FromJSON Result where
        parseJSON
          = withObject "Result"
              (\ o ->
                 Result <$>
                   (o .:? "mime") <*> (o .:? "image") <*>
                     (o .:? "pagemap")
                     <*> (o .:? "displayLink")
                     <*> (o .:? "fileFormat")
                     <*> (o .:? "snippet")
                     <*> (o .:? "kind" .!= "customsearch#result")
                     <*> (o .:? "link")
                     <*> (o .:? "htmlSnippet")
                     <*> (o .:? "htmlFormattedUrl")
                     <*> (o .:? "cacheId")
                     <*> (o .:? "formattedUrl")
                     <*> (o .:? "htmlTitle")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "title"))

instance ToJSON Result where
        toJSON Result{..}
          = object
              (catMaybes
                 [("mime" .=) <$> _rMime, ("image" .=) <$> _rImage,
                  ("pagemap" .=) <$> _rPagemap,
                  ("displayLink" .=) <$> _rDisplayLink,
                  ("fileFormat" .=) <$> _rFileFormat,
                  ("snippet" .=) <$> _rSnippet,
                  Just ("kind" .= _rKind), ("link" .=) <$> _rLink,
                  ("htmlSnippet" .=) <$> _rHtmlSnippet,
                  ("htmlFormattedUrl" .=) <$> _rHtmlFormattedUrl,
                  ("cacheId" .=) <$> _rCacheId,
                  ("formattedUrl" .=) <$> _rFormattedUrl,
                  ("htmlTitle" .=) <$> _rHtmlTitle,
                  ("labels" .=) <$> _rLabels,
                  ("title" .=) <$> _rTitle])

--
-- /See:/ 'resultLabels' smart constructor.
data ResultLabels = ResultLabels
    { _rlName        :: !(Maybe Text)
    , _rlDisplayName :: !(Maybe Text)
    , _rlLabelWithOp :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlName'
--
-- * 'rlDisplayName'
--
-- * 'rlLabelWithOp'
resultLabels
    :: ResultLabels
resultLabels =
    ResultLabels
    { _rlName = Nothing
    , _rlDisplayName = Nothing
    , _rlLabelWithOp = Nothing
    }

rlName :: Lens' ResultLabels (Maybe Text)
rlName = lens _rlName (\ s a -> s{_rlName = a})

rlDisplayName :: Lens' ResultLabels (Maybe Text)
rlDisplayName
  = lens _rlDisplayName
      (\ s a -> s{_rlDisplayName = a})

rlLabelWithOp :: Lens' ResultLabels (Maybe Text)
rlLabelWithOp
  = lens _rlLabelWithOp
      (\ s a -> s{_rlLabelWithOp = a})

instance FromJSON ResultLabels where
        parseJSON
          = withObject "ResultLabels"
              (\ o ->
                 ResultLabels <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "label_with_op"))

instance ToJSON ResultLabels where
        toJSON ResultLabels{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rlName,
                  ("displayName" .=) <$> _rlDisplayName,
                  ("label_with_op" .=) <$> _rlLabelWithOp])

--
-- /See:/ 'searchSearchInformation' smart constructor.
data SearchSearchInformation = SearchSearchInformation
    { _ssiSearchTime            :: !(Maybe Double)
    , _ssiFormattedSearchTime   :: !(Maybe Text)
    , _ssiTotalResults          :: !(Maybe Int64)
    , _ssiFormattedTotalResults :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchSearchInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssiSearchTime'
--
-- * 'ssiFormattedSearchTime'
--
-- * 'ssiTotalResults'
--
-- * 'ssiFormattedTotalResults'
searchSearchInformation
    :: SearchSearchInformation
searchSearchInformation =
    SearchSearchInformation
    { _ssiSearchTime = Nothing
    , _ssiFormattedSearchTime = Nothing
    , _ssiTotalResults = Nothing
    , _ssiFormattedTotalResults = Nothing
    }

ssiSearchTime :: Lens' SearchSearchInformation (Maybe Double)
ssiSearchTime
  = lens _ssiSearchTime
      (\ s a -> s{_ssiSearchTime = a})

ssiFormattedSearchTime :: Lens' SearchSearchInformation (Maybe Text)
ssiFormattedSearchTime
  = lens _ssiFormattedSearchTime
      (\ s a -> s{_ssiFormattedSearchTime = a})

ssiTotalResults :: Lens' SearchSearchInformation (Maybe Int64)
ssiTotalResults
  = lens _ssiTotalResults
      (\ s a -> s{_ssiTotalResults = a})

ssiFormattedTotalResults :: Lens' SearchSearchInformation (Maybe Text)
ssiFormattedTotalResults
  = lens _ssiFormattedTotalResults
      (\ s a -> s{_ssiFormattedTotalResults = a})

instance FromJSON SearchSearchInformation where
        parseJSON
          = withObject "SearchSearchInformation"
              (\ o ->
                 SearchSearchInformation <$>
                   (o .:? "searchTime") <*>
                     (o .:? "formattedSearchTime")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "formattedTotalResults"))

instance ToJSON SearchSearchInformation where
        toJSON SearchSearchInformation{..}
          = object
              (catMaybes
                 [("searchTime" .=) <$> _ssiSearchTime,
                  ("formattedSearchTime" .=) <$>
                    _ssiFormattedSearchTime,
                  ("totalResults" .=) <$> _ssiTotalResults,
                  ("formattedTotalResults" .=) <$>
                    _ssiFormattedTotalResults])

--
-- /See:/ 'query' smart constructor.
data Query = Query
    { _qImgDominantColor       :: !(Maybe Text)
    , _qOutputEncoding         :: !(Maybe Text)
    , _qSiteSearchFilter       :: !(Maybe Text)
    , _qInputEncoding          :: !(Maybe Text)
    , _qOrTerms                :: !(Maybe Text)
    , _qSearchTerms            :: !(Maybe Text)
    , _qStartPage              :: !(Maybe Int32)
    , _qRights                 :: !(Maybe Text)
    , _qCount                  :: !(Maybe Int32)
    , _qExcludeTerms           :: !(Maybe Text)
    , _qFileType               :: !(Maybe Text)
    , _qSearchType             :: !(Maybe Text)
    , _qGoogleHost             :: !(Maybe Text)
    , _qDisableCnTwTranslation :: !(Maybe Text)
    , _qRelatedSite            :: !(Maybe Text)
    , _qHl                     :: !(Maybe Text)
    , _qCref                   :: !(Maybe Text)
    , _qSort                   :: !(Maybe Text)
    , _qLanguage               :: !(Maybe Text)
    , _qSiteSearch             :: !(Maybe Text)
    , _qFilter                 :: !(Maybe Text)
    , _qTotalResults           :: !(Maybe Int64)
    , _qDateRestrict           :: !(Maybe Text)
    , _qTitle                  :: !(Maybe Text)
    , _qLinkSite               :: !(Maybe Text)
    , _qLowRange               :: !(Maybe Text)
    , _qImgType                :: !(Maybe Text)
    , _qGl                     :: !(Maybe Text)
    , _qCx                     :: !(Maybe Text)
    , _qImgColorType           :: !(Maybe Text)
    , _qImgSize                :: !(Maybe Text)
    , _qExactTerms             :: !(Maybe Text)
    , _qStartIndex             :: !(Maybe Int32)
    , _qCr                     :: !(Maybe Text)
    , _qSafe                   :: !(Maybe Text)
    , _qHq                     :: !(Maybe Text)
    , _qHighRange              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Query' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qImgDominantColor'
--
-- * 'qOutputEncoding'
--
-- * 'qSiteSearchFilter'
--
-- * 'qInputEncoding'
--
-- * 'qOrTerms'
--
-- * 'qSearchTerms'
--
-- * 'qStartPage'
--
-- * 'qRights'
--
-- * 'qCount'
--
-- * 'qExcludeTerms'
--
-- * 'qFileType'
--
-- * 'qSearchType'
--
-- * 'qGoogleHost'
--
-- * 'qDisableCnTwTranslation'
--
-- * 'qRelatedSite'
--
-- * 'qHl'
--
-- * 'qCref'
--
-- * 'qSort'
--
-- * 'qLanguage'
--
-- * 'qSiteSearch'
--
-- * 'qFilter'
--
-- * 'qTotalResults'
--
-- * 'qDateRestrict'
--
-- * 'qTitle'
--
-- * 'qLinkSite'
--
-- * 'qLowRange'
--
-- * 'qImgType'
--
-- * 'qGl'
--
-- * 'qCx'
--
-- * 'qImgColorType'
--
-- * 'qImgSize'
--
-- * 'qExactTerms'
--
-- * 'qStartIndex'
--
-- * 'qCr'
--
-- * 'qSafe'
--
-- * 'qHq'
--
-- * 'qHighRange'
query
    :: Query
query =
    Query
    { _qImgDominantColor = Nothing
    , _qOutputEncoding = Nothing
    , _qSiteSearchFilter = Nothing
    , _qInputEncoding = Nothing
    , _qOrTerms = Nothing
    , _qSearchTerms = Nothing
    , _qStartPage = Nothing
    , _qRights = Nothing
    , _qCount = Nothing
    , _qExcludeTerms = Nothing
    , _qFileType = Nothing
    , _qSearchType = Nothing
    , _qGoogleHost = Nothing
    , _qDisableCnTwTranslation = Nothing
    , _qRelatedSite = Nothing
    , _qHl = Nothing
    , _qCref = Nothing
    , _qSort = Nothing
    , _qLanguage = Nothing
    , _qSiteSearch = Nothing
    , _qFilter = Nothing
    , _qTotalResults = Nothing
    , _qDateRestrict = Nothing
    , _qTitle = Nothing
    , _qLinkSite = Nothing
    , _qLowRange = Nothing
    , _qImgType = Nothing
    , _qGl = Nothing
    , _qCx = Nothing
    , _qImgColorType = Nothing
    , _qImgSize = Nothing
    , _qExactTerms = Nothing
    , _qStartIndex = Nothing
    , _qCr = Nothing
    , _qSafe = Nothing
    , _qHq = Nothing
    , _qHighRange = Nothing
    }

qImgDominantColor :: Lens' Query (Maybe Text)
qImgDominantColor
  = lens _qImgDominantColor
      (\ s a -> s{_qImgDominantColor = a})

qOutputEncoding :: Lens' Query (Maybe Text)
qOutputEncoding
  = lens _qOutputEncoding
      (\ s a -> s{_qOutputEncoding = a})

qSiteSearchFilter :: Lens' Query (Maybe Text)
qSiteSearchFilter
  = lens _qSiteSearchFilter
      (\ s a -> s{_qSiteSearchFilter = a})

qInputEncoding :: Lens' Query (Maybe Text)
qInputEncoding
  = lens _qInputEncoding
      (\ s a -> s{_qInputEncoding = a})

qOrTerms :: Lens' Query (Maybe Text)
qOrTerms = lens _qOrTerms (\ s a -> s{_qOrTerms = a})

qSearchTerms :: Lens' Query (Maybe Text)
qSearchTerms
  = lens _qSearchTerms (\ s a -> s{_qSearchTerms = a})

qStartPage :: Lens' Query (Maybe Int32)
qStartPage
  = lens _qStartPage (\ s a -> s{_qStartPage = a})

qRights :: Lens' Query (Maybe Text)
qRights = lens _qRights (\ s a -> s{_qRights = a})

qCount :: Lens' Query (Maybe Int32)
qCount = lens _qCount (\ s a -> s{_qCount = a})

qExcludeTerms :: Lens' Query (Maybe Text)
qExcludeTerms
  = lens _qExcludeTerms
      (\ s a -> s{_qExcludeTerms = a})

qFileType :: Lens' Query (Maybe Text)
qFileType
  = lens _qFileType (\ s a -> s{_qFileType = a})

qSearchType :: Lens' Query (Maybe Text)
qSearchType
  = lens _qSearchType (\ s a -> s{_qSearchType = a})

qGoogleHost :: Lens' Query (Maybe Text)
qGoogleHost
  = lens _qGoogleHost (\ s a -> s{_qGoogleHost = a})

qDisableCnTwTranslation :: Lens' Query (Maybe Text)
qDisableCnTwTranslation
  = lens _qDisableCnTwTranslation
      (\ s a -> s{_qDisableCnTwTranslation = a})

qRelatedSite :: Lens' Query (Maybe Text)
qRelatedSite
  = lens _qRelatedSite (\ s a -> s{_qRelatedSite = a})

qHl :: Lens' Query (Maybe Text)
qHl = lens _qHl (\ s a -> s{_qHl = a})

qCref :: Lens' Query (Maybe Text)
qCref = lens _qCref (\ s a -> s{_qCref = a})

qSort :: Lens' Query (Maybe Text)
qSort = lens _qSort (\ s a -> s{_qSort = a})

qLanguage :: Lens' Query (Maybe Text)
qLanguage
  = lens _qLanguage (\ s a -> s{_qLanguage = a})

qSiteSearch :: Lens' Query (Maybe Text)
qSiteSearch
  = lens _qSiteSearch (\ s a -> s{_qSiteSearch = a})

qFilter :: Lens' Query (Maybe Text)
qFilter = lens _qFilter (\ s a -> s{_qFilter = a})

qTotalResults :: Lens' Query (Maybe Int64)
qTotalResults
  = lens _qTotalResults
      (\ s a -> s{_qTotalResults = a})

qDateRestrict :: Lens' Query (Maybe Text)
qDateRestrict
  = lens _qDateRestrict
      (\ s a -> s{_qDateRestrict = a})

qTitle :: Lens' Query (Maybe Text)
qTitle = lens _qTitle (\ s a -> s{_qTitle = a})

qLinkSite :: Lens' Query (Maybe Text)
qLinkSite
  = lens _qLinkSite (\ s a -> s{_qLinkSite = a})

qLowRange :: Lens' Query (Maybe Text)
qLowRange
  = lens _qLowRange (\ s a -> s{_qLowRange = a})

qImgType :: Lens' Query (Maybe Text)
qImgType = lens _qImgType (\ s a -> s{_qImgType = a})

qGl :: Lens' Query (Maybe Text)
qGl = lens _qGl (\ s a -> s{_qGl = a})

qCx :: Lens' Query (Maybe Text)
qCx = lens _qCx (\ s a -> s{_qCx = a})

qImgColorType :: Lens' Query (Maybe Text)
qImgColorType
  = lens _qImgColorType
      (\ s a -> s{_qImgColorType = a})

qImgSize :: Lens' Query (Maybe Text)
qImgSize = lens _qImgSize (\ s a -> s{_qImgSize = a})

qExactTerms :: Lens' Query (Maybe Text)
qExactTerms
  = lens _qExactTerms (\ s a -> s{_qExactTerms = a})

qStartIndex :: Lens' Query (Maybe Int32)
qStartIndex
  = lens _qStartIndex (\ s a -> s{_qStartIndex = a})

qCr :: Lens' Query (Maybe Text)
qCr = lens _qCr (\ s a -> s{_qCr = a})

qSafe :: Lens' Query (Maybe Text)
qSafe = lens _qSafe (\ s a -> s{_qSafe = a})

qHq :: Lens' Query (Maybe Text)
qHq = lens _qHq (\ s a -> s{_qHq = a})

qHighRange :: Lens' Query (Maybe Text)
qHighRange
  = lens _qHighRange (\ s a -> s{_qHighRange = a})

instance FromJSON Query where
        parseJSON
          = withObject "Query"
              (\ o ->
                 Query <$>
                   (o .:? "imgDominantColor") <*>
                     (o .:? "outputEncoding")
                     <*> (o .:? "siteSearchFilter")
                     <*> (o .:? "inputEncoding")
                     <*> (o .:? "orTerms")
                     <*> (o .:? "searchTerms")
                     <*> (o .:? "startPage")
                     <*> (o .:? "rights")
                     <*> (o .:? "count")
                     <*> (o .:? "excludeTerms")
                     <*> (o .:? "fileType")
                     <*> (o .:? "searchType")
                     <*> (o .:? "googleHost")
                     <*> (o .:? "disableCnTwTranslation")
                     <*> (o .:? "relatedSite")
                     <*> (o .:? "hl")
                     <*> (o .:? "cref")
                     <*> (o .:? "sort")
                     <*> (o .:? "language")
                     <*> (o .:? "siteSearch")
                     <*> (o .:? "filter")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "dateRestrict")
                     <*> (o .:? "title")
                     <*> (o .:? "linkSite")
                     <*> (o .:? "lowRange")
                     <*> (o .:? "imgType")
                     <*> (o .:? "gl")
                     <*> (o .:? "cx")
                     <*> (o .:? "imgColorType")
                     <*> (o .:? "imgSize")
                     <*> (o .:? "exactTerms")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "cr")
                     <*> (o .:? "safe")
                     <*> (o .:? "hq")
                     <*> (o .:? "highRange"))

instance ToJSON Query where
        toJSON Query{..}
          = object
              (catMaybes
                 [("imgDominantColor" .=) <$> _qImgDominantColor,
                  ("outputEncoding" .=) <$> _qOutputEncoding,
                  ("siteSearchFilter" .=) <$> _qSiteSearchFilter,
                  ("inputEncoding" .=) <$> _qInputEncoding,
                  ("orTerms" .=) <$> _qOrTerms,
                  ("searchTerms" .=) <$> _qSearchTerms,
                  ("startPage" .=) <$> _qStartPage,
                  ("rights" .=) <$> _qRights, ("count" .=) <$> _qCount,
                  ("excludeTerms" .=) <$> _qExcludeTerms,
                  ("fileType" .=) <$> _qFileType,
                  ("searchType" .=) <$> _qSearchType,
                  ("googleHost" .=) <$> _qGoogleHost,
                  ("disableCnTwTranslation" .=) <$>
                    _qDisableCnTwTranslation,
                  ("relatedSite" .=) <$> _qRelatedSite,
                  ("hl" .=) <$> _qHl, ("cref" .=) <$> _qCref,
                  ("sort" .=) <$> _qSort,
                  ("language" .=) <$> _qLanguage,
                  ("siteSearch" .=) <$> _qSiteSearch,
                  ("filter" .=) <$> _qFilter,
                  ("totalResults" .=) <$> _qTotalResults,
                  ("dateRestrict" .=) <$> _qDateRestrict,
                  ("title" .=) <$> _qTitle,
                  ("linkSite" .=) <$> _qLinkSite,
                  ("lowRange" .=) <$> _qLowRange,
                  ("imgType" .=) <$> _qImgType, ("gl" .=) <$> _qGl,
                  ("cx" .=) <$> _qCx,
                  ("imgColorType" .=) <$> _qImgColorType,
                  ("imgSize" .=) <$> _qImgSize,
                  ("exactTerms" .=) <$> _qExactTerms,
                  ("startIndex" .=) <$> _qStartIndex,
                  ("cr" .=) <$> _qCr, ("safe" .=) <$> _qSafe,
                  ("hq" .=) <$> _qHq,
                  ("highRange" .=) <$> _qHighRange])

--
-- /See:/ 'promotion' smart constructor.
data Promotion = Promotion
    { _pImage       :: !(Maybe PromotionImage)
    , _pDisplayLink :: !(Maybe Text)
    , _pBodyLines   :: !(Maybe [PromotionBodyLines])
    , _pLink        :: !(Maybe Text)
    , _pHtmlTitle   :: !(Maybe Text)
    , _pTitle       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Promotion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pImage'
--
-- * 'pDisplayLink'
--
-- * 'pBodyLines'
--
-- * 'pLink'
--
-- * 'pHtmlTitle'
--
-- * 'pTitle'
promotion
    :: Promotion
promotion =
    Promotion
    { _pImage = Nothing
    , _pDisplayLink = Nothing
    , _pBodyLines = Nothing
    , _pLink = Nothing
    , _pHtmlTitle = Nothing
    , _pTitle = Nothing
    }

pImage :: Lens' Promotion (Maybe PromotionImage)
pImage = lens _pImage (\ s a -> s{_pImage = a})

pDisplayLink :: Lens' Promotion (Maybe Text)
pDisplayLink
  = lens _pDisplayLink (\ s a -> s{_pDisplayLink = a})

pBodyLines :: Lens' Promotion [PromotionBodyLines]
pBodyLines
  = lens _pBodyLines (\ s a -> s{_pBodyLines = a}) .
      _Default
      . _Coerce

pLink :: Lens' Promotion (Maybe Text)
pLink = lens _pLink (\ s a -> s{_pLink = a})

pHtmlTitle :: Lens' Promotion (Maybe Text)
pHtmlTitle
  = lens _pHtmlTitle (\ s a -> s{_pHtmlTitle = a})

pTitle :: Lens' Promotion (Maybe Text)
pTitle = lens _pTitle (\ s a -> s{_pTitle = a})

instance FromJSON Promotion where
        parseJSON
          = withObject "Promotion"
              (\ o ->
                 Promotion <$>
                   (o .:? "image") <*> (o .:? "displayLink") <*>
                     (o .:? "bodyLines" .!= mempty)
                     <*> (o .:? "link")
                     <*> (o .:? "htmlTitle")
                     <*> (o .:? "title"))

instance ToJSON Promotion where
        toJSON Promotion{..}
          = object
              (catMaybes
                 [("image" .=) <$> _pImage,
                  ("displayLink" .=) <$> _pDisplayLink,
                  ("bodyLines" .=) <$> _pBodyLines,
                  ("link" .=) <$> _pLink,
                  ("htmlTitle" .=) <$> _pHtmlTitle,
                  ("title" .=) <$> _pTitle])

--
-- /See:/ 'search' smart constructor.
data Search = Search
    { _sQueries           :: !(Maybe SearchQueries)
    , _sContext           :: !(Maybe (Maybe Context))
    , _sKind              :: !Text
    , _sUrl               :: !(Maybe SearchURL)
    , _sItems             :: !(Maybe [Maybe Result])
    , _sSearchInformation :: !(Maybe SearchSearchInformation)
    , _sPromotions        :: !(Maybe [Maybe Promotion])
    , _sSpelling          :: !(Maybe SearchSpelling)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Search' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQueries'
--
-- * 'sContext'
--
-- * 'sKind'
--
-- * 'sUrl'
--
-- * 'sItems'
--
-- * 'sSearchInformation'
--
-- * 'sPromotions'
--
-- * 'sSpelling'
search
    :: Search
search =
    Search
    { _sQueries = Nothing
    , _sContext = Nothing
    , _sKind = "customsearch#search"
    , _sUrl = Nothing
    , _sItems = Nothing
    , _sSearchInformation = Nothing
    , _sPromotions = Nothing
    , _sSpelling = Nothing
    }

sQueries :: Lens' Search (Maybe SearchQueries)
sQueries = lens _sQueries (\ s a -> s{_sQueries = a})

sContext :: Lens' Search (Maybe (Maybe Context))
sContext = lens _sContext (\ s a -> s{_sContext = a})

sKind :: Lens' Search Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

sUrl :: Lens' Search (Maybe SearchURL)
sUrl = lens _sUrl (\ s a -> s{_sUrl = a})

sItems :: Lens' Search [Maybe Result]
sItems
  = lens _sItems (\ s a -> s{_sItems = a}) . _Default .
      _Coerce

sSearchInformation :: Lens' Search (Maybe SearchSearchInformation)
sSearchInformation
  = lens _sSearchInformation
      (\ s a -> s{_sSearchInformation = a})

sPromotions :: Lens' Search [Maybe Promotion]
sPromotions
  = lens _sPromotions (\ s a -> s{_sPromotions = a}) .
      _Default
      . _Coerce

sSpelling :: Lens' Search (Maybe SearchSpelling)
sSpelling
  = lens _sSpelling (\ s a -> s{_sSpelling = a})

instance FromJSON Search where
        parseJSON
          = withObject "Search"
              (\ o ->
                 Search <$>
                   (o .:? "queries") <*> (o .:? "context") <*>
                     (o .:? "kind" .!= "customsearch#search")
                     <*> (o .:? "url")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "searchInformation")
                     <*> (o .:? "promotions" .!= mempty)
                     <*> (o .:? "spelling"))

instance ToJSON Search where
        toJSON Search{..}
          = object
              (catMaybes
                 [("queries" .=) <$> _sQueries,
                  ("context" .=) <$> _sContext,
                  Just ("kind" .= _sKind), ("url" .=) <$> _sUrl,
                  ("items" .=) <$> _sItems,
                  ("searchInformation" .=) <$> _sSearchInformation,
                  ("promotions" .=) <$> _sPromotions,
                  ("spelling" .=) <$> _sSpelling])

--
-- /See:/ 'promotionBodyLines' smart constructor.
data PromotionBodyLines = PromotionBodyLines
    { _pblLink      :: !(Maybe Text)
    , _pblUrl       :: !(Maybe Text)
    , _pblHtmlTitle :: !(Maybe Text)
    , _pblTitle     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromotionBodyLines' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pblLink'
--
-- * 'pblUrl'
--
-- * 'pblHtmlTitle'
--
-- * 'pblTitle'
promotionBodyLines
    :: PromotionBodyLines
promotionBodyLines =
    PromotionBodyLines
    { _pblLink = Nothing
    , _pblUrl = Nothing
    , _pblHtmlTitle = Nothing
    , _pblTitle = Nothing
    }

pblLink :: Lens' PromotionBodyLines (Maybe Text)
pblLink = lens _pblLink (\ s a -> s{_pblLink = a})

pblUrl :: Lens' PromotionBodyLines (Maybe Text)
pblUrl = lens _pblUrl (\ s a -> s{_pblUrl = a})

pblHtmlTitle :: Lens' PromotionBodyLines (Maybe Text)
pblHtmlTitle
  = lens _pblHtmlTitle (\ s a -> s{_pblHtmlTitle = a})

pblTitle :: Lens' PromotionBodyLines (Maybe Text)
pblTitle = lens _pblTitle (\ s a -> s{_pblTitle = a})

instance FromJSON PromotionBodyLines where
        parseJSON
          = withObject "PromotionBodyLines"
              (\ o ->
                 PromotionBodyLines <$>
                   (o .:? "link") <*> (o .:? "url") <*>
                     (o .:? "htmlTitle")
                     <*> (o .:? "title"))

instance ToJSON PromotionBodyLines where
        toJSON PromotionBodyLines{..}
          = object
              (catMaybes
                 [("link" .=) <$> _pblLink, ("url" .=) <$> _pblUrl,
                  ("htmlTitle" .=) <$> _pblHtmlTitle,
                  ("title" .=) <$> _pblTitle])

--
-- /See:/ 'contextFacets' smart constructor.
data ContextFacets = ContextFacets
    { _cfAnchor      :: !(Maybe Text)
    , _cfLabelWithOp :: !(Maybe Text)
    , _cfLabel       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContextFacets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfAnchor'
--
-- * 'cfLabelWithOp'
--
-- * 'cfLabel'
contextFacets
    :: ContextFacets
contextFacets =
    ContextFacets
    { _cfAnchor = Nothing
    , _cfLabelWithOp = Nothing
    , _cfLabel = Nothing
    }

cfAnchor :: Lens' ContextFacets (Maybe Text)
cfAnchor = lens _cfAnchor (\ s a -> s{_cfAnchor = a})

cfLabelWithOp :: Lens' ContextFacets (Maybe Text)
cfLabelWithOp
  = lens _cfLabelWithOp
      (\ s a -> s{_cfLabelWithOp = a})

cfLabel :: Lens' ContextFacets (Maybe Text)
cfLabel = lens _cfLabel (\ s a -> s{_cfLabel = a})

instance FromJSON ContextFacets where
        parseJSON
          = withObject "ContextFacets"
              (\ o ->
                 ContextFacets <$>
                   (o .:? "anchor") <*> (o .:? "label_with_op") <*>
                     (o .:? "label"))

instance ToJSON ContextFacets where
        toJSON ContextFacets{..}
          = object
              (catMaybes
                 [("anchor" .=) <$> _cfAnchor,
                  ("label_with_op" .=) <$> _cfLabelWithOp,
                  ("label" .=) <$> _cfLabel])