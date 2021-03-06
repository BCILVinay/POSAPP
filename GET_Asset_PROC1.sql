USE [WIPRO_ATS]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetAssetRequests]    Script Date: 11/30/2018 2:25:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





 




ALTER PROCEDURE  [dbo].[USP_GetAssetRequests]

	@LocationCode varchar(20) 

,   @Stage int 

,	@RequestID varchar(20)=null

,	@DocType int =null

,   @Source varchar(10)=null

,	@Type varchar(30)

AS

BEGIN



IF @type = 'GetRequest'

BEGIN 



SELECT request_hdr_id AS [RequestId] 

FROM   [MOVEMENT_REQUEST_HDR] 

WHERE  Location_Code = @LOcationCode 

       AND stage = @Stage  ;



END



ELSE IF @Type = 'GETASSETREQUEST' 

BEGIN 



SELECT T1.[location_code], 

       T1.[request_hdr_id], 

       T1.[is_permanent], 

       T1.[transfer_to], 

       T1.[is_interunit], 

       T1.[location_to], 

       T1.[project_code], 

       T1.[receiver_email], 

       T1.[gst_no], 

       T1.[project_cost_centre], 

       T1.[pm_approve], 

       T1.[pm_remarks], 

       T1.[cmf_approve], 

       T1.[cmf_remarks], 

       T1.[is_clearance], 

       T1.[stage], 

       T1.[created_on], 

       T1.[created_by], 

       T1.[pm_approved_on], 

       T1.[pm_approved_by], 

       T1.[cmf_approved_on], 

       T1.[cmf_approved_by], 

       T1.[clearance_on], 

       T1.[clearance_by], 

	   T1.[RECEIVED_ON],

	   T1.[RECEIVED_BY],

       T2.[request_dtl_id], 

       T2.[asset_code],
	   T3.ASSET_ID,
	   T4.STORAGE_LOC_NAME AS [RequestedLocName],
	   T5.STORAGE_LOC_NAME AS [RequestedToLocName]

       

FROM   [movement_request_hdr] T1 

       INNER JOIN  [movement_request_dtl] T2 

               ON T1.request_hdr_id = T2.request_hdr_id 
			   Inner join ASSET_ACQUISITION T3  on T2.ASSET_CODE = T3.ASSET_CODE 
			   Inner join STORAGE_LOCATION_MASTER T4 on T1.LOCATION_CODE =t4.STORAGE_LOC_CODE 
			   Inner Join STORAGE_LOCATION_MASTER T5 on ISNULL(T1.LOCATION_TO , T1.TRANSFER_TO)  =t5.STORAGE_LOC_CODE 

WHERE  T1.location_code = @LocationCode 

       AND T1.request_hdr_id = @RequestId 

       AND T1.stage = @Stage 

	  

END



ELSE IF @Type ='GETUPLOADDOCUMENT'

BEGIN 



SELECT 

  [request_doc_id], 

   [doc_type], 

   [doc_name] 

  FROM 

  movement_request_doc   WHERE DOC_TYPE =@DocType  AND request_hdr_id  =@RequestId;





END



ELSE IF @Type = 'GETASSETCLEARANCE'

BEGIN



SELECT T1.clearance_code,

       T1.description,

       T1.type,

       T1.created_by,

       T1.created_on,

	   T2.CREATED_ON as[ClearanceOn],

	   T2.CREATED_BY as[ClearanceBy],

	   T2.Remarks,

       CASE

         WHEN T2.clearance_code = T1.clearance_code THEN 1

         ELSE 0

       END AS [IsAssetClearanced]

FROM   clearance_master T1

       LEFT JOIN (SELECT *

                  FROM   movement_request_clearance

                  WHERE  location_code = @LocationCode

                         AND request_hdr_id = @RequestID) T2

              ON T1.clearance_code = T2.clearance_code

WHERE  T1.type = @Source; 





END









ELSE IF @type ='GETASSETFORRECEIVING'

BEGIN



SELECT T1.[location_code], 

       T1.[request_hdr_id], 

       T1.[is_permanent], 

       T1.[transfer_to], 

       T1.[is_interunit], 

       T1.[location_to], 

       T1.[project_code], 

       T1.[receiver_email], 

       T1.[gst_no], 

       T1.[project_cost_centre], 

       T1.[pm_approve], 

       T1.[pm_remarks], 

       T1.[cmf_approve], 

       T1.[cmf_remarks], 

       T1.[is_clearance], 

       T1.[stage], 

       T1.[created_on], 

       T1.[created_by], 

       T1.[pm_approved_on], 

       T1.[pm_approved_by], 

       T1.[cmf_approved_on], 

       T1.[cmf_approved_by], 

       T1.[clearance_on], 

       T1.[clearance_by], 

	   T1.[RECEIVED_ON],

	   T1.[RECEIVED_BY],

       T2.[request_dtl_id], 

       T2.[asset_code], 

       T3.[request_doc_id], 

       T3.[doc_type], 
       T3.[doc_name],
       T4.ASSET_ID,
	   T5.STORAGE_LOC_NAME AS [RequestedLocName],
	   T6.STORAGE_LOC_NAME AS [RequestedToLocName]

FROM   [movement_request_hdr] T1 
       INNER JOIN [movement_request_dtl] T2 
               ON T1.request_hdr_id = T2.request_hdr_id 
			   Inner join ASSET_ACQUISITION T4  on T2.ASSET_CODE = T4.ASSET_CODE 
			   Inner join STORAGE_LOCATION_MASTER T5 on T1.LOCATION_CODE = T5.STORAGE_LOC_CODE 
			   Inner Join STORAGE_LOCATION_MASTER T6 on ISNULL(T1.LOCATION_TO , T1.TRANSFER_TO) = T6.STORAGE_LOC_CODE 
       LEFT JOIN (SELECT * from  movement_request_doc   WHERE  DOC_TYPE =@DocType and request_hdr_id=@RequestId ) T3  
              ON T1.request_hdr_id = T3.request_hdr_id 
WHERE  (T1.LOCATION_TO = @LocationCode  OR T1.IS_PERMANENT =0)
       AND T1.request_hdr_id = @RequestId 
       AND T1.stage = @Stage 
	   ;




END 





ELSE IF @Type = 'GETREQUESTFORRECEIVING'

BEGIN 



SELECT request_hdr_id AS [RequestId] 

FROM   [MOVEMENT_REQUEST_HDR] 

WHERE   (LOCATION_TO = @LOcationCode )

       AND stage = @Stage  ;



END



ELSE IF  @type = 'GetRGPRequest'

BEGIN 



SELECT request_hdr_id AS [RequestId] 

FROM   [MOVEMENT_REQUEST_HDR] 

WHERE  Location_Code = @LOcationCode 

       AND stage = @Stage  AND IS_PERMANENT =0 ;



END



ELSE IF @Type = 'GETREQUESTFORCLRRECEIVING'

BEGIN 



SELECT request_hdr_id AS [RequestId] 

FROM   [MOVEMENT_REQUEST_HDR] 

WHERE   (LOCATION_TO = @LOcationCode  OR ( IS_PERMANENT =0 AND  Location_Code = @LOcationCode ))

       AND stage = @Stage  ;



END



ELSE IF @Type ='GATEPASSSLIP'

BEGIN 





Select  Row_Number() over (order by (SELECT 1 )) as [SrNo], 'DescOfGoods' as [DescOfGoods] , T1.ASSET_CODE  as HSNCode, Count(T1.ASSET_CODE) as Qty 

, 0 as Rate , 0 as BasicValue, 0 as IGSTRate , 0 as IGSTValue ,0 as [Total]

from MOVEMENT_REQUEST_HDR T Inner join 

  MOVEMENT_REQUEST_DTL T1 

on t.REQUEST_HDR_ID =T1.REQUEST_HDR_ID

 WHERE T.REQUEST_HDR_ID =@RequestID AND T.LOCATION_CODE = @LocationCode

 Group by T1.REQUEST_HDR_ID , T1.ASSET_CODE 





END 

ELSE IF @Type ='GTRequestDesc'



SELECT 'Original' as[Original] , 'Duplicate' as [Duplicate] , 'Triplicate' as[Triplicate], LOCATION_CODE as[FromAddess],

'FromGSTIN' as[FromGSTIN], GST_NO as [ToGSTNIN], T.LOCATION_TO  as [ToAddress] , 'DocumentNumber'as[DocumentNumber] ,Convert(varchar, GetDate(), 103)AS[DocumentDate] , 'PlaceOfSupply' AS[PlaceOfSupply]

from MOVEMENT_REQUEST_HDR T where T.REQUEST_HDR_ID =@RequestID AND T.LOCATION_CODE = @LocationCode

END








