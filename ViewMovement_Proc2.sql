
ALTER Procedure [dbo].[USP_SearchMovementRequest]

  @ReqFromDate DateTime  = NULL
, @ReqToDate DateTime =NULL
, @RequestNo varchar(50) =''
, @AssetNo varchar(50)=''
, @ReqStatus int =0
, @LocationCode varchar(50)
AS 
BEGIN 



--DECLARE @ReqFromDate Date  = ( SELECT GetDate()-10) ;
--DECLARE @ReqToDate DATE =(SELECT GETDATE()) ;
--DECLARE @RequestNo varchar(50) ='';
--DECLARE @AssetNo varchar(50)='';
--DECLARE @LocationCode varchar(50)='02';
--DECLARE @ReqStatus int =1 ;



SELECT 
T1.[location_code], T3.STORAGE_LOC_NAME as[RequestedLocationName],
T1.[location_to], T4.STORAGE_LOC_NAME as[RequestToLocationName],
T1.[request_hdr_id], 
       T1.[is_permanent], T1.[transfer_to], T1.[is_interunit], 
	   T2.[asset_code],
       T1.[project_code], 
       T1.[receiver_email], 
       T1.[gst_no], 
       T1.[project_cost_centre], 
	   T1.[pm_approve], T1.[cmf_approve],
       T1.[pm_remarks],  T1.[cmf_remarks], 
       T1.[is_clearance], T1.[stage], 
	   T2.[request_dtl_id],
	   RequestedBy.USER_NAME+' - '+T1.[created_by] as [created_by], 
       CMFClear.USER_NAME+' - '+ T1.[clearance_by] as [clearance_by],  
	   ReceivedBY.USER_NAME+' - '+ T1.[RECEIVED_BY] as[RECEIVED_BY], 
	   PMAppr.USER_NAME+' - '+ T1.[pm_approved_by] as[pm_approved_by], 
	   CMFAppr.USER_NAME+' - '+ T1.[cmf_approved_by] as [cmf_approved_by], 
	   RecClearance.USER_NAME+' - '+ T1.[REC_CLEARANCE_BY] as [REC_CLEARANCE_BY], 
	   
	   (REPLACE(CONVERT(NVARCHAR,T1.REC_CLEARANCE_ON, 106), ' ', '-')) AS[REC_CLEARANCE_ON],
       (REPLACE(CONVERT(NVARCHAR,T1.[clearance_on], 106), ' ', '-')) AS[clearance_on],
		(REPLACE(CONVERT(NVARCHAR,T1.[RECEIVED_ON], 106), ' ', '-')) AS[RECEIVED_ON],
		(REPLACE(CONVERT(NVARCHAR,T1.[cmf_approved_on], 106), ' ', '-')) AS[cmf_approved_on],
		(REPLACE(CONVERT(NVARCHAR,T1.[pm_approved_on], 106), ' ', '-'))AS[pm_approved_on],
		 (REPLACE(CONVERT(NVARCHAR,T1.[created_on], 106), ' ', '-'))AS[created_on]
	    


 from MOVEMENT_REQUEST_HDR T1 Inner join MOVEMENT_REQUEST_DTL T2
ON T1.REQUEST_HDR_ID =T2.REQUEST_HDR_ID
Inner join STORAGE_LOCATION_MASTER T3 on T1.LOCATION_CODE =T3.STORAGE_LOC_CODE 
Inner JOIN STORAGE_LOCATION_MASTER T4 on T1.LOCATION_CODE =T4.STORAGE_LOC_CODE 

Inner JOIN USER_ACCOUNTS RequestedBy on RequestedBy.USER_ID = T1.CREATED_BY

Inner JOIN USER_ACCOUNTS PMAppr on PMAppr.USER_ID = T1.PM_APPROVED_BY
Inner JOIN USER_ACCOUNTS CMFAppr on CMFAppr.USER_ID = T1.CMF_APPROVED_BY
Inner JOIN USER_ACCOUNTS CMFClear on CMFClear.USER_ID = T1.CLEARANCE_BY
Inner JOIN USER_ACCOUNTS ReceivedBY on ReceivedBY.USER_ID = T1.RECEIVED_BY
Inner JOIN USER_ACCOUNTS RecClearance on RecClearance.USER_ID = T1.REC_CLEARANCE_BY
WHERE 
(
(ISNULL(@ReqFromDate,'') ='' OR ISNULL(@ReqToDate,'') ='')
OR
(CAST(T1.CREATED_ON AS DATE ) >= CAST(@ReqFromDate AS DATE) 
AND CAST(T1.CREATED_ON AS DATE ) <= CAST(@ReqToDate AS DATE)) 
)
AND ( @RequestNo ='' OR(@RequestNo !='' AND  T1.REQUEST_HDR_ID = @RequestNo))   
AND (@AssetNo ='' OR (@AssetNo != '' AND T2.ASSET_CODE =@AssetNo) )
--AND (@ReqStatus =0 OR (@ReqStatus>0 AND T1.STAGE =@ReqStatus) )

-- status basis filter logic 

 AND (@ReqStatus =0 OR
  (@ReqStatus>0 AND (
     (T1.STAGE >= @ReqStatus AND @ReqStatus =1 AND T1.CREATED_ON is not null) -- Request Raised
  OR (T1.STAGE >= @ReqStatus AND T1.PM_APPROVE =1) 
  OR (T1.STAGE >= @ReqStatus AND T1.CMF_APPROVE =1) 
  OR (T1.STAGE >= @ReqStatus AND T1.IS_CLEARANCE =1) 
  OR (T1.STAGE >= @ReqStatus AND T1.IsReceived =1) 
  OR (T1.STAGE >= @ReqStatus AND T1.REC_CLEARANCE  =1) 
  OR (T1.STAGE >= @ReqStatus AND @ReqStatus =8 AND T1.PM_APPROVED_ON is not null)  -- PMReject
  OR (T1.STAGE >= @ReqStatus AND @ReqStatus =9 AND T1.CMF_APPROVED_ON is not null )  --CMFReject
  OR (T1.STAGE >= @ReqStatus AND @ReqStatus =10 AND T1.CLEARANCE_ON is not null) --ClearanceReject
  OR (T1.STAGE >= @ReqStatus AND @ReqStatus =11 AND T1.REC_CLEARANCE_ON is not null )  --ClearanceRecReject

  )))
----

AND T1.LOCATION_CODE = @LocationCode  ;

END