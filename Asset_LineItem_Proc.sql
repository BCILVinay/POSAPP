

ALTER PROC [dbo].[USP_AssetRequestLineItem]



@Type varchar(20),

@AssetHeaderRequestId varchar(20),

@LineItemId int ,

@AssetCode varchar(50) =null,

@DocumentType varchar(50)=null,

@DocumentName varchar(50)=null,

@LocationCode varchar(20),
@Remark varchar(20)=NULL

--@FileName varchar(50) =null output

AS 

BEGIN 

--set @FileName ='' ;

 IF @Type = 'SAVE_UPLOAD_DOCUMENT' 

  BEGIN 



    -- DECLARE @NEXT_REQUEST_DOC_ID varchar(20) =0;

    --EXEC Ud_mrunningserialno  @LocationCode,  1,  'MOVEMENT_REQUEST_DOC', 0,  0,  @NEXT_REQUEST_DOC_ID output; 



 

INSERT INTO [MOVEMENT_REQUEST_DOC]

           ([REQUEST_DOC_ID]

           ,[REQUEST_HDR_ID]

           ,[DOC_TYPE]

           ,[DOC_NAME]
		   ,Remark)

     VALUES

           (

		   @LineItemId,

		   @AssetHeaderRequestId,

		   @DocumentType,

		   @DocumentName,
		   @Remark
		  );

		  --set @FileName= @LocationCode+'_'+@DocumentName+'_'+@NEXT_REQUEST_DOC_ID ;

END



ELSE IF  @Type = 'SAVE_REQUEST_DETAIL' 

BEGIN 

 --DECLARE @NEXT_REQUEST_DTL_ID varchar(20) =0;

 --  EXEC Ud_mrunningserialno  @LocationCode,  1,  'MOVEMENT_REQUEST_DTL', 0,  0,  @NEXT_REQUEST_DTL_ID output; 

 --if  EXISTS ( SELECT 'X' from  ASSET_ACQUISITION WHERE ISNULL(status,0) =0 AND ASSET_CODE= @AssetCode )

 --BEGIN

INSERT INTO [dbo].[MOVEMENT_REQUEST_DTL]

           ([REQUEST_DTL_ID]

           ,[REQUEST_HDR_ID]

           ,[ASSET_CODE])

     VALUES

           (

		   @LineItemId,

		   @AssetHeaderRequestId,

		   @AssetCode

		   );



		   Update ASSET_ACQUISITION set Status =1 where ASSET_CODE =@AssetCode  ;

		   END

		   --set @FileName =@LocationCode+'_'+@DocumentName+'_'+ @NEXT_REQUEST_DTL_ID;

--END 



END 








