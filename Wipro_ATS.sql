USE [WIPRO_ATS]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_UserGroupRights'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_UserGroupRights'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportGatePass'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportGatePass'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportGatePass'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetTracking'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetTracking'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetTracking'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetAllocation'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetAllocation'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetAllocation'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetPrintGatepassDetails'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetPrintGatepassDetails'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetPrintGatepassDetails'

GO
ALTER TABLE [dbo].[CITY_MASTER] DROP CONSTRAINT [FK_CITY_MASTER_CITY_MASTER]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] DROP CONSTRAINT [DF_COMPANY_MASTER_COMP_OWNER]
GO
ALTER TABLE [dbo].[ASSET_ACQUISITION] DROP CONSTRAINT [DF_ASSET_ACQUISITION_RUNNING_SERIAL_NO]
GO
/****** Object:  View [dbo].[vw_UserGroupRights]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP VIEW [dbo].[vw_UserGroupRights]
GO
/****** Object:  View [dbo].[vw_ReportGatePass]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP VIEW [dbo].[vw_ReportGatePass]
GO
/****** Object:  View [dbo].[vw_ReportAssetTracking]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP VIEW [dbo].[vw_ReportAssetTracking]
GO
/****** Object:  View [dbo].[vw_ReportAssetAllocation]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP VIEW [dbo].[vw_ReportAssetAllocation]
GO
/****** Object:  View [dbo].[vw_ProjectSubProject]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP VIEW [dbo].[vw_ProjectSubProject]
GO
/****** Object:  View [dbo].[vw_GetPrintGatepassDetails]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP VIEW [dbo].[vw_GetPrintGatepassDetails]
GO
/****** Object:  Table [dbo].[VENDOR_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[VENDOR_MASTER]
GO
/****** Object:  Table [dbo].[VENDOR_ESCALATION_MATRIX]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[VENDOR_ESCALATION_MATRIX]
GO
/****** Object:  Table [dbo].[USER_ACCOUNTS]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[USER_ACCOUNTS]
GO
/****** Object:  Table [dbo].[UnAuthrizeLaptopSendMailHistory]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[UnAuthrizeLaptopSendMailHistory]
GO
/****** Object:  Table [dbo].[SYSTEM_HEALTH]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[SYSTEM_HEALTH]
GO
/****** Object:  Table [dbo].[SUB_PROJECT_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[SUB_PROJECT_MASTER]
GO
/****** Object:  Table [dbo].[STORAGE_LOCATION_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[STORAGE_LOCATION_MASTER]
GO
/****** Object:  Table [dbo].[RFID_READER_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[RFID_READER_MASTER]
GO
/****** Object:  Table [dbo].[RECONCILED_SERIAL_CODES]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[RECONCILED_SERIAL_CODES]
GO
/****** Object:  Table [dbo].[RECONCILED_ASSET_CODES_RFID]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[RECONCILED_ASSET_CODES_RFID]
GO
/****** Object:  Table [dbo].[RECONCILED_ASSET_CODES]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[RECONCILED_ASSET_CODES]
GO
/****** Object:  Table [dbo].[PROJECT_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[PROJECT_MASTER]
GO
/****** Object:  Table [dbo].[PROCESS_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[PROCESS_MASTER]
GO
/****** Object:  Table [dbo].[PRINTING_LOG]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[PRINTING_LOG]
GO
/****** Object:  Table [dbo].[PLANT_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[PLANT_MASTER]
GO
/****** Object:  Table [dbo].[PAGE_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[PAGE_MASTER]
GO
/****** Object:  Table [dbo].[mRunningSerialNo]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[mRunningSerialNo]
GO
/****** Object:  Table [dbo].[MovementRequestConfig]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[MovementRequestConfig]
GO
/****** Object:  Table [dbo].[MOVEMENT_TAG_CHECK_LapTop]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[MOVEMENT_TAG_CHECK_LapTop]
GO
/****** Object:  Table [dbo].[MOVEMENT_TAG_CHECK]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[MOVEMENT_TAG_CHECK]
GO
/****** Object:  Table [dbo].[MOVEMENT_REQUEST_HDR]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[MOVEMENT_REQUEST_HDR]
GO
/****** Object:  Table [dbo].[MOVEMENT_REQUEST_DTL]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[MOVEMENT_REQUEST_DTL]
GO
/****** Object:  Table [dbo].[MOVEMENT_REQUEST_DOC]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[MOVEMENT_REQUEST_DOC]
GO
/****** Object:  Table [dbo].[MOVEMENT_REQUEST_CLEARANCE]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[MOVEMENT_REQUEST_CLEARANCE]
GO
/****** Object:  Table [dbo].[LOCATION_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[LOCATION_MASTER]
GO
/****** Object:  Table [dbo].[GROUP_RIGHTS]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[GROUP_RIGHTS]
GO
/****** Object:  Table [dbo].[GROUP_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[GROUP_MASTER]
GO
/****** Object:  Table [dbo].[GENERAL_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[GENERAL_MASTER]
GO
/****** Object:  Table [dbo].[GATEPASS_GENERATION]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[GATEPASS_GENERATION]
GO
/****** Object:  Table [dbo].[GATEPASS_ASSETS]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[GATEPASS_ASSETS]
GO
/****** Object:  Table [dbo].[EMPLOYEE_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[EMPLOYEE_MASTER]
GO
/****** Object:  Table [dbo].[DOCUMENT_MANAGEMENT]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[DOCUMENT_MANAGEMENT]
GO
/****** Object:  Table [dbo].[DEPARTMENT_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[DEPARTMENT_MASTER]
GO
/****** Object:  Table [dbo].[COUNTRY_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[COUNTRY_MASTER]
GO
/****** Object:  Table [dbo].[COMPANY_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[COMPANY_MASTER]
GO
/****** Object:  Table [dbo].[COMPANY_LOCATION]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[COMPANY_LOCATION]
GO
/****** Object:  Table [dbo].[CODE_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[CODE_MASTER]
GO
/****** Object:  Table [dbo].[CLEARANCE_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[CLEARANCE_MASTER]
GO
/****** Object:  Table [dbo].[CITY_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[CITY_MASTER]
GO
/****** Object:  Table [dbo].[CATEGORY_MASTER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[CATEGORY_MASTER]
GO
/****** Object:  Table [dbo].[CALL_LOG_MGMT]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[CALL_LOG_MGMT]
GO
/****** Object:  Table [dbo].[AssetNotification]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[AssetNotification]
GO
/****** Object:  Table [dbo].[ASSET_TRANSFER]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[ASSET_TRANSFER]
GO
/****** Object:  Table [dbo].[ASSET_SWAP_HISTORY]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[ASSET_SWAP_HISTORY]
GO
/****** Object:  Table [dbo].[ASSET_SOLD_DETAILS]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[ASSET_SOLD_DETAILS]
GO
/****** Object:  Table [dbo].[ASSET_REPLACEMENT]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[ASSET_REPLACEMENT]
GO
/****** Object:  Table [dbo].[ASSET_AMC]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[ASSET_AMC]
GO
/****** Object:  Table [dbo].[ASSET_ALLOCATION]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[ASSET_ALLOCATION]
GO
/****** Object:  Table [dbo].[ASSET_ACQUISITION_HISTORY]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[ASSET_ACQUISITION_HISTORY]
GO
/****** Object:  Table [dbo].[ASSET_ACQUISITION]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[ASSET_ACQUISITION]
GO
/****** Object:  Table [dbo].[AlertDisable]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[AlertDisable]
GO
/****** Object:  Table [dbo].[AIS_LABEL_PRINTING]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TABLE [dbo].[AIS_LABEL_PRINTING]
GO
/****** Object:  UserDefinedFunction [dbo].[UDF_GETAssetCode]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP FUNCTION [dbo].[UDF_GETAssetCode]
GO
/****** Object:  StoredProcedure [dbo].[ValidateRFID]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[ValidateRFID]
GO
/****** Object:  StoredProcedure [dbo].[USP_ValidateAsset]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_ValidateAsset]
GO
/****** Object:  StoredProcedure [dbo].[USP_UploadBulkAssetAcquisition]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_UploadBulkAssetAcquisition]
GO
/****** Object:  StoredProcedure [dbo].[USP_UNAuthrizeLaptop]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_UNAuthrizeLaptop]
GO
/****** Object:  StoredProcedure [dbo].[USP_SendMailConfiguration]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_SendMailConfiguration]
GO
/****** Object:  StoredProcedure [dbo].[USP_SearchMovementRequest]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_SearchMovementRequest]
GO
/****** Object:  StoredProcedure [dbo].[USP_SearchAsset]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_SearchAsset]
GO
/****** Object:  StoredProcedure [dbo].[USP_ReceivedAssetMail]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_ReceivedAssetMail]
GO
/****** Object:  StoredProcedure [dbo].[USP_MailerAssetMovement]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_MailerAssetMovement]
GO
/****** Object:  StoredProcedure [dbo].[USP_MailAlert]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_MailAlert]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetUnAuthrizeLaptop]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_GetUnAuthrizeLaptop]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetAssetRequests]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_GetAssetRequests]
GO
/****** Object:  StoredProcedure [dbo].[USP_CategoryConfig]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_CategoryConfig]
GO
/****** Object:  StoredProcedure [dbo].[Usp_assignpagetogroup]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[Usp_assignpagetogroup]
GO
/****** Object:  StoredProcedure [dbo].[USP_AssetRequestLineItem]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_AssetRequestLineItem]
GO
/****** Object:  StoredProcedure [dbo].[USP_AssetRequest]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_AssetRequest]
GO
/****** Object:  StoredProcedure [dbo].[USP_ApprovedAssetRequest]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[USP_ApprovedAssetRequest]
GO
/****** Object:  StoredProcedure [dbo].[ud_mRunningSerialNo]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[ud_mRunningSerialNo]
GO
/****** Object:  StoredProcedure [dbo].[SYSTEM_HEALTH_INSERT_UPDATE]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[SYSTEM_HEALTH_INSERT_UPDATE]
GO
/****** Object:  StoredProcedure [dbo].[sp_UserLogin]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_UserLogin]
GO
/****** Object:  StoredProcedure [dbo].[sp_SubProjectMaster]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_SubProjectMaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_StorageLocationMaster]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_StorageLocationMaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_SendAMCAlert]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_SendAMCAlert]
GO
/****** Object:  StoredProcedure [dbo].[sp_ReportStockAsOn]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_ReportStockAsOn]
GO
/****** Object:  StoredProcedure [dbo].[sp_ReportAssetTracking]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_ReportAssetTracking]
GO
/****** Object:  StoredProcedure [dbo].[sp_ReportAssetHistory]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_ReportAssetHistory]
GO
/****** Object:  StoredProcedure [dbo].[sp_ReportAssetDashBoard_old]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_ReportAssetDashBoard_old]
GO
/****** Object:  StoredProcedure [dbo].[sp_ReportAssetDashBoard]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_ReportAssetDashBoard]
GO
/****** Object:  StoredProcedure [dbo].[sp_ReportAssetAllocation]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_ReportAssetAllocation]
GO
/****** Object:  StoredProcedure [dbo].[sp_ProjectMaster]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_ProjectMaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_PlantMaster]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_PlantMaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertInitialData]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_InsertInitialData]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAssetSummaryReport]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_GetAssetSummaryReport]
GO
/****** Object:  StoredProcedure [dbo].[sp_EmployeeMaster]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_EmployeeMaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteAllDataOfCompany]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_DeleteAllDataOfCompany]
GO
/****** Object:  StoredProcedure [dbo].[sp_CountryMaster]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_CountryMaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_CompanyMaster]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_CompanyMaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_CodetMaster]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_CodetMaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_CityMaster]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_CityMaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_AssetLocationMaster]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_AssetLocationMaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_AssetAllocation]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_AssetAllocation]
GO
/****** Object:  StoredProcedure [dbo].[sp_AssetAcquisition_BKP17Sept2018]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_AssetAcquisition_BKP17Sept2018]
GO
/****** Object:  StoredProcedure [dbo].[sp_AssetAcquisition]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP PROCEDURE [dbo].[sp_AssetAcquisition]
GO
/****** Object:  UserDefinedTableType [dbo].[UploadAsset]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TYPE [dbo].[UploadAsset]
GO
/****** Object:  UserDefinedTableType [dbo].[Upload_BULKASSET_ACQUISITION]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TYPE [dbo].[Upload_BULKASSET_ACQUISITION]
GO
/****** Object:  UserDefinedTableType [dbo].[Upload_ASSET_ACQUISITION]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP TYPE [dbo].[Upload_ASSET_ACQUISITION]
GO
USE [master]
GO
/****** Object:  Database [WIPRO_ATS]    Script Date: 12-10-2018 8:50:09 AM ******/
DROP DATABASE [WIPRO_ATS]
GO
/****** Object:  Database [WIPRO_ATS]    Script Date: 12-10-2018 8:50:09 AM ******/
CREATE DATABASE [WIPRO_ATS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WIPRO_ATS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\WIPRO_ATS.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WIPRO_ATS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\WIPRO_ATS_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WIPRO_ATS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WIPRO_ATS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WIPRO_ATS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET ARITHABORT OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WIPRO_ATS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WIPRO_ATS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WIPRO_ATS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WIPRO_ATS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WIPRO_ATS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WIPRO_ATS] SET  MULTI_USER 
GO
ALTER DATABASE [WIPRO_ATS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WIPRO_ATS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WIPRO_ATS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WIPRO_ATS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [WIPRO_ATS]
GO
/****** Object:  UserDefinedTableType [dbo].[Upload_ASSET_ACQUISITION]    Script Date: 12-10-2018 8:50:09 AM ******/
CREATE TYPE [dbo].[Upload_ASSET_ACQUISITION] AS TABLE(
	[ACQUISITION_ID] [numeric](18, 2) NULL,
	[RUNNING_SERIAL_NO] [numeric](18, 2) NULL,
	[ASSET_CODE] [nvarchar](50) NULL,
	[TAG_ID] [nvarchar](24) NULL,
	[ASSET_ID] [nvarchar](50) NULL,
	[SERIAL_CODE] [nvarchar](50) NULL,
	[CATEGORY_CODE] [nvarchar](50) NULL,
	[ASSET_LOCATION] [nvarchar](50) NULL,
	[PLANT] [nvarchar](50) NULL,
	[LOCATION] [nvarchar](50) NULL,
	[CUSTOMER_ORDER_NO] [nvarchar](50) NULL,
	[PROJECT_NAME] [nvarchar](50) NULL,
	[SUB_PROJECT_NAME] [nvarchar](50) NULL,
	[PROJECT_MANAGER] [nvarchar](50) NULL,
	[ASSIGN_PRO_TO_EMP] [nvarchar](50) NULL,
	[COMP_CODE] [nchar](10) NULL,
	[VENDOR_CODE] [nvarchar](100) NULL,
	[INSTALLED_DATE] [datetime] NULL,
	[PURCHASED_DATE] [datetime] NULL,
	[PURCHASED_AMT] [decimal](18, 0) NULL,
	[CURRENCY] [nvarchar](20) NULL,
	[TRANSFER_PRICE] [decimal](18, 0) NULL,
	[LOCAL_CURRENCY] [decimal](18, 0) NULL,
	[PO_NUMBER] [nvarchar](50) NULL,
	[PO_DATE] [datetime] NULL,
	[INVOICE_NO] [nvarchar](50) NULL,
	[SALE_DATE] [datetime] NULL,
	[SALE_AMT] [decimal](18, 0) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[ASSET_MAKE] [nvarchar](50) NULL,
	[MODEL_NAME] [nvarchar](50) NULL,
	[ASSET_PROCESS] [nvarchar](50) NULL,
	[SECURITY_CLASSIFICATION] [nvarchar](50) NULL,
	[ASSET_SIZE] [nvarchar](50) NULL,
	[ASSET_VLAN] [nvarchar](50) NULL,
	[ASSET_HDD] [nvarchar](50) NULL,
	[ASSET_PROCESSOR] [nvarchar](50) NULL,
	[ASSET_RAM] [nvarchar](50) NULL,
	[ASSET_IMEI_NO] [nvarchar](50) NULL,
	[ASSET_PHONE_MEMORY] [nvarchar](50) NULL,
	[ASSET_SERVICE_PROVIDER] [nvarchar](50) NULL,
	[ASSET_TYPE] [nvarchar](50) NULL,
	[ASSET_BOE] [nvarchar](50) NULL,
	[ASSET_REGISTER_NO] [nvarchar](50) NULL,
	[BONDED_TYPE] [nvarchar](20) NULL,
	[BOND_NO] [nvarchar](50) NULL,
	[CAPITALISED_STATUS] [nvarchar](20) NULL,
	[VERIFIABLE_STATUS] [nvarchar](20) NULL,
	[PORT_NO] [nvarchar](100) NULL,
	[ASSET_ALLOCATED] [bit] NULL,
	[SOLD_SCRAPPED_STATUS] [nvarchar](20) NULL,
	[SECURITY_GATE_ENTRY_NO] [nvarchar](50) NULL,
	[SECURITY_GATE_ENTRY_DATE] [datetime] NULL,
	[AMC_WARRANTY_START_DATE] [datetime] NULL,
	[AMC_WARRANTY_END_DATE] [datetime] NULL,
	[REMARKS] [nvarchar](1000) NULL,
	[ASSET_APPROVED] [bit] NULL,
	[AMC_WARRANTY] [nvarchar](50) NULL,
	[WORKSTATION_NO] [nvarchar](50) NULL,
	[COST_CENTER_NO] [nvarchar](50) NULL,
	[COMPANY_NAME] [nvarchar](50) NULL,
	[DEPARTMENT] [nvarchar](50) NULL,
	[INVENTORY_NOTE] [nvarchar](50) NULL,
	[ASSET_DESCRIPTION] [nvarchar](200) NULL,
	[ASSET_MAIN_TEXT] [nvarchar](200) NULL,
	[ASSET_DESCRIPTION_1] [nvarchar](200) NULL,
	[ACCT_DE] [nvarchar](50) NULL,
	[ROOM] [nvarchar](50) NULL,
	[BA] [nvarchar](30) NULL,
	[UPDATED_ON] [datetime] NULL,
	[UPDATED_BY] [nvarchar](50) NULL,
	[EX_FIELD1] [nvarchar](100) NULL,
	[EX_FIELD2] [nvarchar](100) NULL,
	[EX_FIELD3] [nvarchar](100) NULL,
	[EX_FIELD4] [nvarchar](50) NULL,
	[EX_FIELD5] [nvarchar](50) NULL,
	[Status] [bit] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Upload_BULKASSET_ACQUISITION]    Script Date: 12-10-2018 8:50:10 AM ******/
CREATE TYPE [dbo].[Upload_BULKASSET_ACQUISITION] AS TABLE(
	[FAMS_ID] [varchar](50) NULL,
	[SERIAL_CODE] [varchar](50) NULL,
	[CATEGORY_CODE] [varchar](50) NULL,
	[ASSET_LOCATION] [varchar](50) NULL,
	[PLANT] [varchar](50) NULL,
	[LOCATION] [varchar](50) NULL,
	[PROJECT_NAME] [varchar](50) NULL,
	[SUB_PROJECT_NAME] [varchar](50) NULL,
	[PROJECT_MANAGER] [varchar](50) NULL,
	[ASSIGN_EMPLOYEE] [varchar](50) NULL,
	[AMC_WARRANTY] [varchar](50) NULL,
	[AMC_WARRANTY_START_DATE] [varchar](50) NULL,
	[AMC_WARRANTY_END_DATE] [varchar](50) NULL,
	[VENDOR_CODE] [varchar](100) NULL,
	[INSTALLED_DATE] [varchar](50) NULL,
	[PURCHASED_DATE] [varchar](50) NULL,
	[PURCHASED_AMT] [varchar](50) NULL,
	[CURRENCY] [varchar](20) NULL,
	[TRANSFER_PRICE] [varchar](50) NULL,
	[LOCAL_CURRENCY] [varchar](50) NULL,
	[PO_NUMBER] [varchar](50) NULL,
	[PO_DATE] [varchar](50) NULL,
	[INVOICE_NO] [varchar](50) NULL,
	[SALE_DATE] [varchar](50) NULL,
	[SALE_AMT] [varchar](50) NULL,
	[ASSET_MAKE] [varchar](50) NULL,
	[MODEL_NAME] [varchar](50) NULL,
	[SECURITY_CLASSIFICATION] [varchar](50) NULL,
	[ASSET_SIZE] [varchar](50) NULL,
	[ASSET_VLAN] [varchar](50) NULL,
	[ASSET_HDD] [varchar](50) NULL,
	[ASSET_PROCESSOR] [varchar](50) NULL,
	[ASSET_RAM] [varchar](50) NULL,
	[ASSET_IMEI_NO] [varchar](50) NULL,
	[ASSET_PHONE_MEMORY] [varchar](50) NULL,
	[ASSET_SERVICE_PROVIDER] [varchar](50) NULL,
	[ASSET_TYPE] [varchar](50) NULL,
	[ASSET_BOE] [varchar](50) NULL,
	[ASSET_REGISTER_NO] [varchar](50) NULL,
	[BONDED_TYPE] [varchar](20) NULL,
	[CAPITALISED_STATUS] [varchar](20) NULL,
	[VERIFIABLE_STATUS] [varchar](20) NULL,
	[PORT_NO] [varchar](100) NULL,
	[WORKSTATION_NO] [varchar](50) NULL,
	[COST_CENTER_NO] [varchar](50) NULL,
	[SECURITY_GATE_ENTRY_NO] [varchar](50) NULL,
	[SECURITY_GATE_ENTRY_DATE] [varchar](50) NULL,
	[COMP_CODE] [varchar](50) NULL,
	[COMPANY_NAME] [varchar](50) NULL,
	[CUSTOMER_ORDER_NO] [varchar](50) NULL,
	[DEPARTMENT] [varchar](50) NULL,
	[REMARKS] [varchar](1000) NULL,
	[INVENTORY_NOTE] [varchar](50) NULL,
	[ASSET_DESCRIPTION] [varchar](200) NULL,
	[ASSET_MAIN_TEXT] [varchar](200) NULL,
	[ASSET_DESCRIPTION_1] [varchar](200) NULL,
	[ACCT_DE_Type_Of_Asset] [varchar](50) NULL,
	[ROOM] [varchar](50) NULL,
	[BA] [varchar](30) NULL,
	[BOND_NO] [varchar](50) NULL,
	[ASSET_PROCESS] [varchar](50) NULL,
	[EX_FIELD1] [varchar](100) NULL,
	[EX_FIELD2] [varchar](100) NULL,
	[EX_FIELD3] [varchar](100) NULL,
	[EX_FIELD4] [varchar](50) NULL,
	[EX_FIELD5] [varchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UploadAsset]    Script Date: 12-10-2018 8:50:10 AM ******/
CREATE TYPE [dbo].[UploadAsset] AS TABLE(
	[AssetCode] [varchar](20) NULL
)
GO
/****** Object:  StoredProcedure [dbo].[sp_AssetAcquisition]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Neeraj Saxena
-- ALTER date: July 05, 2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_AssetAcquisition]
	@ASSET_TYPE nvarchar(50)=NULL,
	@ASSET_CODE nvarchar(50)=NULL,
	@ASSET_ID nvarchar(50)=NULL,
	@SERIAL_CODE nvarchar(50)=NULL,
	@NEW_SERIAL_CODE nvarchar(50)=NULL,
	@CATEGORY_CODE nvarchar(50)=NULL,
	@ALLOCATED_PROC_CODE nvarchar(50)=NULL,
	@ASSET_LOCATION nvarchar(50)=NULL,
	@ASSET_ALLOCATED_EMP nvarchar(50)=NULL,
	@TYPE nvarchar(50)=NULL,
	@COMP_CODE nvarchar(50)=NULL,
	@EMP_CODE nvarchar(50)=NULL,
	@DEPARTMENT_CODE nvarchar(50)=NULL,
	@COMP_NAME nvarchar(50)=NULL,
	@VENDOR_CODE nvarchar(50)=NULL,
	@LOC_CODE nvarchar(50)=NULL,
	@PARENT_LOC_CODE nvarchar(50)=NULL,
	@LOC_LEVEL int=NULL,
	@PARENT_CATEGORY nvarchar(50)=NULL,	
	@CATEGORY_LEVEL int=NULL,
	@CUST_ORDR_NO nvarchar(50)=NULL,
	@AMC_WARRANTY nvarchar(50)=NULL,
	@AMC_WARRANTY_START_DATE datetime=NULL,
	@AMC_WARRANTY_END_DATE datetime=NULL,
	@ASSET_INSTALL_DATE datetime=NULL,
	@PURCHASE_DATE datetime=NULL,
	@ASSET_PURCHASE_VAL DECIMAL(18,0)=NULL,
	@PO_NO nvarchar(50)=NULL,
	@PO_DATE datetime=NULL,
	@INVOICE_NO nvarchar(50)=NULL,
	@SALE_DATE datetime=NULL,
	@SALE_VAL DECIMAL(18,0)=NULL,
	@ASSET_MAKE nvarchar(50)=NULL,
	@MAKE_MODEL nvarchar(50)=NULL,
	@ASSET_PROCESS nvarchar(50)=NULL,
	@SECURITYCLASSIFICATION nvarchar(50)=NULL,
	@ASSET_SIZE nvarchar(50)=NULL,
	@ASSET_VLAN nvarchar(50)=NULL,
	@ASSET_HDD nvarchar(50)=NULL,
	@ASSET_PROCESSOR nvarchar(50)=NULL,
	@ASSET_RAM nvarchar(50)=NULL,
	@ASSET_IMEINO nvarchar(50)=NULL,
	@ASSET_PHONEMEMORY nvarchar(50)=NULL,
	@SERVICE_PROVIDER nvarchar(50)=NULL,
	@ASSET_BOE nvarchar(50)=NULL,
	@REGISTER_NO nvarchar(50)=NULL,
	@BONDED_TYPE nvarchar(50)=NULL,
	@BOND_NO nvarchar(50)=NULL,
	@CAPITALISED_TYPE nvarchar(50)=NULL,
	@VERIFIABLE_TYPE nvarchar(50)=NULL,
	@PORT_NO nvarchar(50)=NULL,
	@ASSET_ALLOCATED bit=NULL,
	@RUNNING_SERIAL_NO INT=NULL,
	@SECURITYGENO nvarchar(50)=NULL,
	@SECURITYGEDATE datetime=NULL,
	@ASSET_REMARKS nvarchar(100)=NULL,
	@ASSET_APPROVED bit=NULL,
	@WORKSTATIONNO nvarchar(50)=NULL,
	@COSTCENTERNO nvarchar(50)=NULL,
	@PLANT_CODE nvarchar(50)=NULL,
	@STORAGE_LOC_CODE nvarchar(50)=NULL,
	@ASSET_DESC nvarchar(100)=NULL,
	@ASSET_DESC_1 nvarchar(100)=NULL,
	@ASSET_MAIN_TEXT nvarchar(100)=NULL,
	@ACCT_DE nvarchar(50)=NULL,
	@ROOM nvarchar(50)=NULL,
	@BA nvarchar(50)=NULL,
	@CURRENCY nvarchar(10)=NULL,
	@INVENTORY_NOTE nvarchar(50)=NULL,
	@PROJECT_NAME nvarchar(50)=NULL,
	@SUB_PROJECT_NAME nvarchar(50)=NULL,
	@PROJECT_MANAGER nvarchar(50)=NULL,
	@SOLD_SCRAPPED_STATUS nvarchar(50)=NULL,
	@ASSIGN_PRO_TO_EMP nvarchar(50)=NULL,
	@TRANSFER_PRICE DECIMAL(18,2)=NULL,
	@LOCAL_CURRENCY DECIMAL(18,2)=NULL,
	@FROMDATE datetime=NULL,
	@ALLOCATION_DATE datetime=NULL,
	@CREATED_BY nvarchar(50)=NULL,	
	@TODATE datetime=NULL,
	@EXFLD1 nvarchar(50)=NULL,
	@EXFLD2 nvarchar(50)=NULL,
	@EXFLD3 nvarchar(50)=NULL,
	@EXFLD4 nvarchar(50)=NULL,
	@EXFLD5 nvarchar(50)=NULL
AS
BEGIN
		IF @TYPE = 'GETLOCATION'
			BEGIN
				SELECT LOC_CODE, LOC_NAME FROM LOCATION_MASTER  WHERE PARENT_LOC_CODE LIKE ''+@PARENT_LOC_CODE+'%' AND LOC_LEVEL=@LOC_LEVEL 
				AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE AND ACTIVE=1
			END
        IF @TYPE = 'POPULATECATEGORY'
			BEGIN
				SELECT CATEGORY_CODE,CATEGORY_NAME FROM CATEGORY_MASTER  WHERE ASSET_TYPE=@ASSET_TYPE AND PARENT_CATEGORY=@PARENT_CATEGORY 
				AND CATEGORY_LEVEL=@CATEGORY_LEVEL AND ACTIVE=1					
			END
		IF @TYPE = 'POPULATECOMPANY'
			BEGIN
				SELECT DISTINCT COMP_CODE,COMP_NAME FROM COMPANY_MASTER WHERE ACTIVE='1' AND COMP_CODE=@COMP_CODE		 			
			END
		IF @TYPE = 'POPULATECATEGORYFORUPDATE'
			BEGIN
				SELECT CATEGORY_CODE,CATEGORY_NAME FROM CATEGORY_MASTER	WHERE ACTIVE=1		 			
			END
		IF @TYPE = 'POPULATEVENDOR'
			BEGIN
				SELECT VENDOR_CODE,VENDOR_NAME FROM VENDOR_MASTER WHERE ACTIVE='1' AND COMP_CODE=@COMP_CODE ORDER BY VENDOR_NAME			
			END
		IF @TYPE = 'POPULATEPLANT'
			BEGIN
				SELECT PLANT_CODE,PLANT_NAME FROM PLANT_MASTER  WHERE ACTIVE=1					
			END
		IF @TYPE = 'POPULATEPROJECT'
			BEGIN
				SELECT PROJECT_CODE,PROJECT_NAME FROM PROJECT_MASTER  WHERE LOCATION_CODE=@STORAGE_LOC_CODE AND ACTIVE=1					
			END
		IF @TYPE = 'POPULATESUBPROJECT'
			BEGIN
				SELECT SUB_PROJECT_CODE,SUB_PROJECT_NAME FROM SUB_PROJECT_MASTER  WHERE PROJECT_CODE=@PROJECT_NAME AND
				LOCATION_CODE=@STORAGE_LOC_CODE AND ACTIVE=1					
			END
		IF @TYPE = 'POPULATEASSETMAKE'
			BEGIN
				SELECT DISTINCT [ASSET_MAKE] FROM [ASSET_ACQUISITION] WHERE [CATEGORY_CODE] = @CATEGORY_CODE AND
				 COMP_CODE=@COMP_CODE					
			END
		IF @TYPE = 'POPULATEMODELNAME'
			BEGIN
				SELECT DISTINCT [MODEL_NAME] FROM [ASSET_ACQUISITION] WHERE ASSET_MAKE=@ASSET_MAKE AND
				[CATEGORY_CODE] = @CATEGORY_CODE AND COMP_CODE=@COMP_CODE				
			END
		IF @TYPE = 'POPULATEDEPARTMENT'
			BEGIN
				SELECT DEPT_CODE,DEPT_NAME FROM DEPARTMENT_MASTER WHERE ACTIVE='1' AND COMP_CODE=@COMP_CODE				
			END
		IF @TYPE = 'GETPROJECTMANAGER'
			BEGIN
				SELECT DISTINCT PROJECT_MANAGER FROM SUB_PROJECT_MASTER  WHERE SUB_PROJECT_CODE=@SUB_PROJECT_NAME AND
				LOCATION_CODE=@STORAGE_LOC_CODE AND ACTIVE=1					
			END
		IF @TYPE = 'SAVEASSETACQUISITIONDETAILS'
			BEGIN
				INSERT INTO [ASSET_ACQUISITION] ([ASSET_CODE],[ASSET_ID],[SERIAL_CODE],[CATEGORY_CODE],[ASSET_LOCATION],[PLANT],
				[LOCATION],[PROJECT_NAME],[SUB_PROJECT_NAME],[PROJECT_MANAGER],[ASSIGN_PRO_TO_EMP],[CUSTOMER_ORDER_NO],[AMC_WARRANTY],
				[AMC_WARRANTY_START_DATE],[AMC_WARRANTY_END_DATE],[COMP_CODE],[VENDOR_CODE],[INSTALLED_DATE],[PURCHASED_DATE],[PURCHASED_AMT],
				[CURRENCY],[TRANSFER_PRICE],[LOCAL_CURRENCY],[PO_NUMBER],[PO_DATE],[INVOICE_NO],[SALE_DATE],[SALE_AMT],[CREATED_BY],[CREATED_ON],
				[ASSET_MAKE],[MODEL_NAME],[ASSET_PROCESS],[SECURITY_CLASSIFICATION],[ASSET_SIZE],[ASSET_VLAN],[ASSET_HDD],[ASSET_PROCESSOR],[ASSET_RAM],
				[ASSET_IMEI_NO],[ASSET_PHONE_MEMORY],[ASSET_SERVICE_PROVIDER],[ASSET_TYPE],[ASSET_BOE],[ASSET_REGISTER_NO],[BONDED_TYPE],[BOND_NO],
				[CAPITALISED_STATUS],[VERIFIABLE_STATUS],[PORT_NO],[ASSET_ALLOCATED],[RUNNING_SERIAL_NO],[SECURITY_GATE_ENTRY_NO],[SECURITY_GATE_ENTRY_DATE],
				[REMARKS],[ASSET_APPROVED],[WORKSTATION_NO],[COST_CENTER_NO],[COMPANY_NAME],[DEPARTMENT],[ASSET_DESCRIPTION],[ASSET_MAIN_TEXT],[ASSET_DESCRIPTION_1],
				[ACCT_DE],[ROOM],[BA],[INVENTORY_NOTE],[EX_FIELD1],[EX_FIELD2],[EX_FIELD3],[EX_FIELD4],[EX_FIELD5])
				VALUES
				(@ASSET_CODE,@ASSET_ID,@SERIAL_CODE,@CATEGORY_CODE,@ASSET_LOCATION,@PLANT_CODE,@STORAGE_LOC_CODE,@PROJECT_NAME,@SUB_PROJECT_NAME,@PROJECT_MANAGER,@ASSIGN_PRO_TO_EMP,
				 @CUST_ORDR_NO,@AMC_WARRANTY,@AMC_WARRANTY_START_DATE,@AMC_WARRANTY_END_DATE,@COMP_CODE,@VENDOR_CODE,@ASSET_INSTALL_DATE,@PURCHASE_DATE,@ASSET_PURCHASE_VAL,
				 @CURRENCY,@TRANSFER_PRICE,@LOCAL_CURRENCY,@PO_NO,@PO_DATE,@INVOICE_NO,@SALE_DATE,@SALE_VAL,@CREATED_BY,GETDATE(),@ASSET_MAKE,@MAKE_MODEL,@ASSET_PROCESS,
				 @SECURITYCLASSIFICATION,@ASSET_SIZE,@ASSET_VLAN,@ASSET_HDD,@ASSET_PROCESSOR,@ASSET_RAM,@ASSET_IMEINO,@ASSET_PHONEMEMORY,@SERVICE_PROVIDER,@ASSET_TYPE,
				 @ASSET_BOE,@REGISTER_NO,@BONDED_TYPE,@BOND_NO,@CAPITALISED_TYPE,@VERIFIABLE_TYPE,@PORT_NO,@ASSET_ALLOCATED,@RUNNING_SERIAL_NO,@SECURITYGENO,@SECURITYGEDATE,
				 @ASSET_REMARKS,@ASSET_APPROVED,@WORKSTATIONNO,@COSTCENTERNO,@COMP_NAME,@DEPARTMENT_CODE,@ASSET_DESC,@ASSET_MAIN_TEXT,@ASSET_DESC_1,@ACCT_DE,@ROOM,@BA,@INVENTORY_NOTE,
				 @EXFLD1,@EXFLD2,@EXFLD3,@EXFLD4,@EXFLD5
				)
			END

		IF @TYPE = 'UPDATEASSETACQUISITIONDETAILS'
			BEGIN
				UPDATE [ASSET_ACQUISITION] SET [SERIAL_CODE]=@SERIAL_CODE,[ASSET_ID] =@ASSET_ID ,[CUSTOMER_ORDER_NO] =@CUST_ORDR_NO ,[CATEGORY_CODE] =@CATEGORY_CODE,[ASSET_LOCATION] =@ASSET_LOCATION,[VENDOR_CODE] =@VENDOR_CODE,
				[INSTALLED_DATE] = @ASSET_INSTALL_DATE,[PURCHASED_DATE] =@PURCHASE_DATE,[PURCHASED_AMT] = @ASSET_PURCHASE_VAL ,[PO_NUMBER] = @PO_NO,[PO_DATE] = @PO_DATE ,[INVOICE_NO] = @INVOICE_NO,
				[SALE_DATE] = @SALE_DATE ,[SALE_AMT] = @SALE_VAL ,[ASSET_MAKE] = @ASSET_MAKE ,[MODEL_NAME] = @MAKE_MODEL,[ASSET_PROCESS] = @ASSET_PROCESS ,[REMARKS]=@ASSET_REMARKS,
				[SECURITY_CLASSIFICATION] =  @SECURITYCLASSIFICATION ,[ASSET_SIZE] = @ASSET_SIZE,[ASSET_VLAN] = @ASSET_VLAN ,[ASSET_HDD] = @ASSET_HDD,[ASSET_PROCESSOR] = @ASSET_PROCESSOR,
				[ASSET_RAM] =@ASSET_RAM ,[ASSET_IMEI_NO] =@ASSET_IMEINO ,[ASSET_PHONE_MEMORY] = @ASSET_PHONEMEMORY ,[ASSET_SERVICE_PROVIDER] =@SERVICE_PROVIDER ,
				[ASSET_TYPE] = @ASSET_TYPE ,[ASSET_BOE] = @ASSET_BOE ,[ASSET_REGISTER_NO] =@REGISTER_NO ,[BONDED_TYPE] = @BONDED_TYPE ,[CAPITALISED_STATUS] = @CAPITALISED_TYPE, 
				[VERIFIABLE_STATUS] =@VERIFIABLE_TYPE ,[PORT_NO] = @PORT_NO ,[SECURITY_GATE_ENTRY_NO] =@SECURITYGENO ,[SECURITY_GATE_ENTRY_DATE] = @SECURITYGEDATE ,[CREATED_BY] = @CREATED_BY,
				[CREATED_ON] = GETDATE() ,[AMC_WARRANTY_START_DATE] = @AMC_WARRANTY_START_DATE ,[AMC_WARRANTY_END_DATE] = @AMC_WARRANTY_END_DATE,[AMC_WARRANTY] = @AMC_WARRANTY,[WORKSTATION_NO] = @WORKSTATIONNO,
				[COST_CENTER_NO] =@COSTCENTERNO ,[COMPANY_NAME] = @COMP_NAME,[DEPARTMENT] = @DEPARTMENT_CODE ,[ASSET_APPROVED] = 0 ,[PLANT] =@PLANT_CODE ,[PROJECT_NAME] = @PROJECT_NAME,[BOND_NO] = @BOND_NO,
				[INVENTORY_NOTE] = @INVENTORY_NOTE,[ASSET_DESCRIPTION] = @ASSET_DESC,[ASSET_MAIN_TEXT] = @ASSET_MAIN_TEXT,[ACCT_DE] = @ACCT_DE,[ROOM] = @ROOM,[BA] =@BA,[SUB_PROJECT_NAME]=@SUB_PROJECT_NAME,
				[PROJECT_MANAGER]=@PROJECT_MANAGER,[ASSIGN_PRO_TO_EMP]=@ASSIGN_PRO_TO_EMP,[CURRENCY]=@CURRENCY,[TRANSFER_PRICE]=@TRANSFER_PRICE,[LOCAL_CURRENCY]=@LOCAL_CURRENCY
				 WHERE [ASSET_CODE] = @ASSET_CODE AND [COMP_CODE] =@COMP_CODE AND [LOCATION]=@STORAGE_LOC_CODE				
			END
		IF @TYPE = 'GETMAXACQUISITIONID'
			BEGIN
				SELECT ISNULL(MAX(RUNNING_SERIAL_NO),0)+1 AS RSN FROM ASSET_ACQUISITION WHERE CATEGORY_CODE = @CATEGORY_CODE AND LOCATION=@STORAGE_LOC_CODE			
			END
		IF @TYPE = 'CHECKDUPLICATESERIALNO'
			BEGIN
				SELECT COUNT(*) AS SC FROM ASSET_ACQUISITION WHERE SERIAL_CODE = @SERIAL_CODE AND LOCATION=@STORAGE_LOC_CODE			
			END
		IF @TYPE = 'CHECKDUPLICATEIMEINO'
			BEGIN
				SELECT COUNT(*) AS IMEI FROM ASSET_ACQUISITION WHERE ASSET_IMEI_NO = @ASSET_IMEINO AND LOCATION=@STORAGE_LOC_CODE			
			END
		IF @TYPE = 'VALIDLOCATIONCODE'
			BEGIN
				SELECT COUNT(*) AS LOC FROM [LOCATION_MASTER] WHERE [LOC_CODE]=@LOC_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE			
			END
		IF @TYPE = 'VALIDATECOMPLOCATION'
			BEGIN
				SELECT COUNT(*) AS LOCATION FROM STORAGE_LOCATION_MASTER WHERE STORAGE_LOC_CODE=@STORAGE_LOC_CODE AND ACTIVE=1			
			END
		IF @TYPE = 'VALIDCATEGORYCODE'
			BEGIN
				SELECT COUNT(*) AS CAT FROM [CATEGORY_MASTER] WHERE [CATEGORY_CODE]=@CATEGORY_CODE			
			END
		IF @TYPE = 'VALIDSERIALNO'
			BEGIN
				SELECT COUNT(*) AS SNO FROM [ASSET_ACQUISITION] WHERE [SERIAL_CODE] = @SERIAL_CODE			
			END
		IF @TYPE = 'VALIDVENDORCODE'
			BEGIN
				SELECT COUNT(*) AS VENDOR FROM [VENDOR_MASTER] WHERE [VENDOR_CODE] = @VENDOR_CODE AND COMP_CODE=@COMP_CODE	
			END
		IF @TYPE = 'VALIDDEPARTMENTCODE'
			BEGIN
				SELECT COUNT(*) AS DPT FROM [DEPARTMENT_MASTER] WHERE [DEPT_CODE] = @DEPARTMENT_CODE AND COMP_CODE=@COMP_CODE	
			END
		IF @TYPE = 'VALIDEMPLOYEECODE'
			BEGIN
				SELECT [EMPLOYEE_NAME] FROM [EMPLOYEE_MASTER] WHERE [EMPLOYEE_CODE]=@EMP_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE	
			END
		IF @TYPE = 'GETVENDOR'
			BEGIN
				SELECT VENDOR_CODE,VENDOR_NAME FROM VENDOR_MASTER WHERE ACTIVE='1' AND COMP_CODE=@COMP_CODE ORDER BY VENDOR_NAME 	
			END
		IF @TYPE = 'GETVENDORDETAILS'
			BEGIN
				SELECT [VENDOR_CONT_PERSON],[VENDOR_ADDRESS],[VENDOR_EMAIL] FROM [VENDOR_MASTER]
				WHERE [VENDOR_CODE]=@VENDOR_CODE AND COMP_CODE=@COMP_CODE 	
			END
		IF @TYPE = 'UPDATEASSETSERIALNO'
			BEGIN
				UPDATE [ASSET_ACQUISITION] SET [SERIAL_CODE] = @NEW_SERIAL_CODE,[CREATED_BY] = @CREATED_BY,[CREATED_ON] = GETDATE()
				WHERE [ASSET_CODE] = @ASSET_CODE AND [SERIAL_CODE] = @SERIAL_CODE AND [COMP_CODE] = @COMP_CODE	
			END
		IF @TYPE = 'CATEGORYCODECHANGED'
			BEGIN
				SELECT CATEGORY_CODE FROM ASSET_ACQUISITION WHERE ASSET_CODE=@ASSET_CODE AND LOCATION=@STORAGE_LOC_CODE
			END
		IF @TYPE = 'GETPRNFILE'
			BEGIN
				SELECT PRN_FILE_DATA FROM dbo.AIS_LABEL_PRINTING WHERE PRN_NAME = 'AIS_PRN' 	
			END
			
		--IF @TYPE = 'GETVIEWASSETDETAILS'
		--	BEGIN
		--		SELECT AA.*,CM.CATEGORY_NAME,LM.LOC_NAME FROM ASSET_ACQUISITION AA INNER JOIN CATEGORY_MASTER CM ON AA.CATEGORY_CODE = CM.CATEGORY_CODE
		--		INNER JOIN LOCATION_MASTER LM ON AA.ASSET_LOCATION = LM.LOC_CODE WHERE AA.ASSET_TYPE LIKE ''+@ASSET_TYPE+'%' AND AA.ASSET_CODE LIKE ''+@ASSET_CODE+'%'
		--		AND AA.SERIAL_CODE LIKE '" + oPRP.AssetSerialCode + "%' AND AA.ASSET_MAKE LIKE ''+@ASSET_MAKE+'%' AND AA.ASSET_ID LIKE ''+@ASSET_ID+'%' AND AA.PO_NUMBER LIKE ''+@PO_NO+'%'
  --              AND AA.[MODEL_NAME] IN (@MAKE_MODEL)
  --              AND AA.[MODEL_NAME] LIKE ''+@MAKE_MODEL+'%'
		--		AND AA.CATEGORY_CODE LIKE ''+@CATEGORY_CODE+'%' AND AA.ASSET_LOCATION LIKE ''+@ASSET_LOCATION+'%'
		--		AND AA.AMC_WARRANTY LIKE ''+@AMC_WARRANTY+'%' AND AA.VERIFIABLE_STATUS LIKE ''+@VERIFIABLE_TYPE+'%'
		--		AND AA.ASSET_APPROVED = @ASSET_APPROVED AND AA.COMP_CODE=@COMP_CODE            
		--		AND AA.SOLD_SCRAPPED_STATUS IS NULL ORDER BY AA.PORT_NO           
		--		--AND AA.SOLD_SCRAPPED_STATUS = @SOLD_SCRAPPED_STATUS ORDER BY AA.ASSET_CODE,AA.PORT_NO			
		--	END


END









GO
/****** Object:  StoredProcedure [dbo].[sp_AssetAcquisition_BKP17Sept2018]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Neeraj Saxena
-- ALTER date: July 05, 2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_AssetAcquisition_BKP17Sept2018]
	@ASSET_TYPE nvarchar(50)=NULL,
	@ASSET_CODE nvarchar(50)=NULL,
	@ASSET_ID nvarchar(50)=NULL,
	@SERIAL_CODE nvarchar(50)=NULL,
	@NEW_SERIAL_CODE nvarchar(50)=NULL,
	@CATEGORY_CODE nvarchar(50)=NULL,
	@ALLOCATED_PROC_CODE nvarchar(50)=NULL,
	@ASSET_LOCATION nvarchar(50)=NULL,
	@ASSET_ALLOCATED_EMP nvarchar(50)=NULL,
	@TYPE nvarchar(50)=NULL,
	@COMP_CODE nvarchar(50)=NULL,
	@EMP_CODE nvarchar(50)=NULL,
	@DEPARTMENT_CODE nvarchar(50)=NULL,
	@COMP_NAME nvarchar(50)=NULL,
	@VENDOR_CODE nvarchar(50)=NULL,
	@LOC_CODE nvarchar(50)=NULL,
	@PARENT_LOC_CODE nvarchar(50)=NULL,
	@LOC_LEVEL int=NULL,
	@PARENT_CATEGORY nvarchar(50)=NULL,	
	@CATEGORY_LEVEL int=NULL,
	@CUST_ORDR_NO nvarchar(50)=NULL,
	@AMC_WARRANTY nvarchar(50)=NULL,
	@AMC_WARRANTY_START_DATE datetime=NULL,
	@AMC_WARRANTY_END_DATE datetime=NULL,
	@ASSET_INSTALL_DATE datetime=NULL,
	@PURCHASE_DATE datetime=NULL,
	@ASSET_PURCHASE_VAL DECIMAL(18,0)=NULL,
	@PO_NO nvarchar(50)=NULL,
	@PO_DATE datetime=NULL,
	@INVOICE_NO nvarchar(50)=NULL,
	@SALE_DATE datetime=NULL,
	@SALE_VAL DECIMAL(18,0)=NULL,
	@ASSET_MAKE nvarchar(50)=NULL,
	@MAKE_MODEL nvarchar(50)=NULL,
	@ASSET_PROCESS nvarchar(50)=NULL,
	@SECURITYCLASSIFICATION nvarchar(50)=NULL,
	@ASSET_SIZE nvarchar(50)=NULL,
	@ASSET_VLAN nvarchar(50)=NULL,
	@ASSET_HDD nvarchar(50)=NULL,
	@ASSET_PROCESSOR nvarchar(50)=NULL,
	@ASSET_RAM nvarchar(50)=NULL,
	@ASSET_IMEINO nvarchar(50)=NULL,
	@ASSET_PHONEMEMORY nvarchar(50)=NULL,
	@SERVICE_PROVIDER nvarchar(50)=NULL,
	@ASSET_BOE nvarchar(50)=NULL,
	@REGISTER_NO nvarchar(50)=NULL,
	@BONDED_TYPE nvarchar(50)=NULL,
	@BOND_NO nvarchar(50)=NULL,
	@CAPITALISED_TYPE nvarchar(50)=NULL,
	@VERIFIABLE_TYPE nvarchar(50)=NULL,
	@PORT_NO nvarchar(50)=NULL,
	@ASSET_ALLOCATED bit=NULL,
	@RUNNING_SERIAL_NO INT=NULL,
	@SECURITYGENO nvarchar(50)=NULL,
	@SECURITYGEDATE datetime=NULL,
	@ASSET_REMARKS nvarchar(100)=NULL,
	@ASSET_APPROVED bit=NULL,
	@WORKSTATIONNO nvarchar(50)=NULL,
	@COSTCENTERNO nvarchar(50)=NULL,
	@PLANT_CODE nvarchar(50)=NULL,
	@STORAGE_LOC_CODE nvarchar(50)=NULL,
	@ASSET_DESC nvarchar(100)=NULL,
	@ASSET_DESC_1 nvarchar(100)=NULL,
	@ASSET_MAIN_TEXT nvarchar(100)=NULL,
	@ACCT_DE nvarchar(50)=NULL,
	@ROOM nvarchar(50)=NULL,
	@BA nvarchar(50)=NULL,
	@CURRENCY nvarchar(10)=NULL,
	@INVENTORY_NOTE nvarchar(50)=NULL,
	@PROJECT_NAME nvarchar(50)=NULL,
	@SUB_PROJECT_NAME nvarchar(50)=NULL,
	@PROJECT_MANAGER nvarchar(50)=NULL,
	@SOLD_SCRAPPED_STATUS nvarchar(50)=NULL,
	@ASSIGN_PRO_TO_EMP nvarchar(50)=NULL,
	@TRANSFER_PRICE DECIMAL(18,2)=NULL,
	@LOCAL_CURRENCY DECIMAL(18,2)=NULL,
	@FROMDATE datetime=NULL,
	@ALLOCATION_DATE datetime=NULL,
	@CREATED_BY nvarchar(50)=NULL,	
	@TODATE datetime=NULL,
	@EXFLD1 nvarchar(50)=NULL,
	@EXFLD2 nvarchar(50)=NULL,
	@EXFLD3 nvarchar(50)=NULL,
	@EXFLD4 nvarchar(50)=NULL,
	@EXFLD5 nvarchar(50)=NULL
AS
BEGIN
		IF @TYPE = 'GETLOCATION'
			BEGIN
				SELECT LOC_CODE, LOC_NAME FROM LOCATION_MASTER  WHERE PARENT_LOC_CODE LIKE ''+@PARENT_LOC_CODE+'%' AND LOC_LEVEL=@LOC_LEVEL 
				AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE AND ACTIVE=1
			END
        IF @TYPE = 'POPULATECATEGORY'
			BEGIN
				SELECT CATEGORY_CODE,CATEGORY_NAME FROM CATEGORY_MASTER  WHERE ASSET_TYPE=@ASSET_TYPE AND PARENT_CATEGORY=@PARENT_CATEGORY 
				AND CATEGORY_LEVEL=@CATEGORY_LEVEL AND ACTIVE=1					
			END
		IF @TYPE = 'POPULATECOMPANY'
			BEGIN
				SELECT DISTINCT COMP_CODE,COMP_NAME FROM COMPANY_MASTER WHERE ACTIVE='1' AND COMP_CODE=@COMP_CODE		 			
			END
		IF @TYPE = 'POPULATECATEGORYFORUPDATE'
			BEGIN
				SELECT CATEGORY_CODE,CATEGORY_NAME FROM CATEGORY_MASTER	WHERE ACTIVE=1		 			
			END
		IF @TYPE = 'POPULATEVENDOR'
			BEGIN
				SELECT VENDOR_CODE,VENDOR_NAME FROM VENDOR_MASTER WHERE ACTIVE='1' AND COMP_CODE=@COMP_CODE ORDER BY VENDOR_NAME			
			END
		IF @TYPE = 'POPULATEPLANT'
			BEGIN
				SELECT PLANT_CODE,PLANT_NAME FROM PLANT_MASTER  WHERE ACTIVE=1					
			END
		IF @TYPE = 'POPULATEPROJECT'
			BEGIN
				SELECT PROJECT_CODE,PROJECT_NAME FROM PROJECT_MASTER  WHERE LOCATION_CODE=@STORAGE_LOC_CODE AND ACTIVE=1					
			END
		IF @TYPE = 'POPULATESUBPROJECT'
			BEGIN
				SELECT SUB_PROJECT_CODE,SUB_PROJECT_NAME FROM SUB_PROJECT_MASTER  WHERE PROJECT_CODE=@PROJECT_NAME AND
				LOCATION_CODE=@STORAGE_LOC_CODE AND ACTIVE=1					
			END
		IF @TYPE = 'POPULATEASSETMAKE'
			BEGIN
				SELECT DISTINCT [ASSET_MAKE] FROM [ASSET_ACQUISITION] WHERE [CATEGORY_CODE] = @CATEGORY_CODE AND
				 COMP_CODE=@COMP_CODE					
			END
		IF @TYPE = 'POPULATEMODELNAME'
			BEGIN
				SELECT DISTINCT [MODEL_NAME] FROM [ASSET_ACQUISITION] WHERE ASSET_MAKE=@ASSET_MAKE AND
				[CATEGORY_CODE] = @CATEGORY_CODE AND COMP_CODE=@COMP_CODE				
			END
		IF @TYPE = 'POPULATEDEPARTMENT'
			BEGIN
				SELECT DEPT_CODE,DEPT_NAME FROM DEPARTMENT_MASTER WHERE ACTIVE='1' AND COMP_CODE=@COMP_CODE				
			END
		IF @TYPE = 'GETPROJECTMANAGER'
			BEGIN
				SELECT DISTINCT PROJECT_MANAGER FROM SUB_PROJECT_MASTER  WHERE SUB_PROJECT_CODE=@SUB_PROJECT_NAME AND
				LOCATION_CODE=@STORAGE_LOC_CODE AND ACTIVE=1					
			END
		IF @TYPE = 'SAVEASSETACQUISITIONDETAILS'
			BEGIN
				INSERT INTO [ASSET_ACQUISITION] ([ASSET_CODE],[ASSET_ID],[SERIAL_CODE],[CATEGORY_CODE],[ASSET_LOCATION],[PLANT],
				[LOCATION],[PROJECT_NAME],[SUB_PROJECT_NAME],[PROJECT_MANAGER],[ASSIGN_PRO_TO_EMP],[CUSTOMER_ORDER_NO],[AMC_WARRANTY],
				[AMC_WARRANTY_START_DATE],[AMC_WARRANTY_END_DATE],[COMP_CODE],[VENDOR_CODE],[INSTALLED_DATE],[PURCHASED_DATE],[PURCHASED_AMT],
				[CURRENCY],[TRANSFER_PRICE],[LOCAL_CURRENCY],[PO_NUMBER],[PO_DATE],[INVOICE_NO],[SALE_DATE],[SALE_AMT],[CREATED_BY],[CREATED_ON],
				[ASSET_MAKE],[MODEL_NAME],[ASSET_PROCESS],[SECURITY_CLASSIFICATION],[ASSET_SIZE],[ASSET_VLAN],[ASSET_HDD],[ASSET_PROCESSOR],[ASSET_RAM],
				[ASSET_IMEI_NO],[ASSET_PHONE_MEMORY],[ASSET_SERVICE_PROVIDER],[ASSET_TYPE],[ASSET_BOE],[ASSET_REGISTER_NO],[BONDED_TYPE],[BOND_NO],
				[CAPITALISED_STATUS],[VERIFIABLE_STATUS],[PORT_NO],[ASSET_ALLOCATED],[RUNNING_SERIAL_NO],[SECURITY_GATE_ENTRY_NO],[SECURITY_GATE_ENTRY_DATE],
				[REMARKS],[ASSET_APPROVED],[WORKSTATION_NO],[COST_CENTER_NO],[COMPANY_NAME],[DEPARTMENT],[ASSET_DESCRIPTION],[ASSET_MAIN_TEXT],[ASSET_DESCRIPTION_1],
				[ACCT_DE],[ROOM],[BA],[INVENTORY_NOTE],[EX_FIELD1],[EX_FIELD2],[EX_FIELD3],[EX_FIELD4],[EX_FIELD5])
				VALUES
				(@ASSET_CODE,@ASSET_ID,@SERIAL_CODE,@CATEGORY_CODE,@ASSET_LOCATION,@PLANT_CODE,@STORAGE_LOC_CODE,@PROJECT_NAME,@SUB_PROJECT_NAME,@PROJECT_MANAGER,@ASSIGN_PRO_TO_EMP,
				 @CUST_ORDR_NO,@AMC_WARRANTY,@AMC_WARRANTY_START_DATE,@AMC_WARRANTY_END_DATE,@COMP_CODE,@VENDOR_CODE,@ASSET_INSTALL_DATE,@PURCHASE_DATE,@ASSET_PURCHASE_VAL,
				 @CURRENCY,@TRANSFER_PRICE,@LOCAL_CURRENCY,@PO_NO,@PO_DATE,@INVOICE_NO,@SALE_DATE,@SALE_VAL,@CREATED_BY,GETDATE(),@ASSET_MAKE,@MAKE_MODEL,@ASSET_PROCESS,
				 @SECURITYCLASSIFICATION,@ASSET_SIZE,@ASSET_VLAN,@ASSET_HDD,@ASSET_PROCESSOR,@ASSET_RAM,@ASSET_IMEINO,@ASSET_PHONEMEMORY,@SERVICE_PROVIDER,@ASSET_TYPE,
				 @ASSET_BOE,@REGISTER_NO,@BONDED_TYPE,@BOND_NO,@CAPITALISED_TYPE,@VERIFIABLE_TYPE,@PORT_NO,@ASSET_ALLOCATED,@RUNNING_SERIAL_NO,@SECURITYGENO,@SECURITYGEDATE,
				 @ASSET_REMARKS,@ASSET_APPROVED,@WORKSTATIONNO,@COSTCENTERNO,@COMP_NAME,@DEPARTMENT_CODE,@ASSET_DESC,@ASSET_MAIN_TEXT,@ASSET_DESC_1,@ACCT_DE,@ROOM,@BA,@INVENTORY_NOTE,
				 @EXFLD1,@EXFLD2,@EXFLD3,@EXFLD4,@EXFLD5
				)
			END

		IF @TYPE = 'UPDATEASSETACQUISITIONDETAILS'
			BEGIN
				UPDATE [ASSET_ACQUISITION] SET [SERIAL_CODE]=@SERIAL_CODE,[ASSET_ID] =@ASSET_ID ,[CUSTOMER_ORDER_NO] =@CUST_ORDR_NO ,[CATEGORY_CODE] =@CATEGORY_CODE,[ASSET_LOCATION] =@ASSET_LOCATION,[VENDOR_CODE] =@VENDOR_CODE,
				[INSTALLED_DATE] = @ASSET_INSTALL_DATE,[PURCHASED_DATE] =@PURCHASE_DATE,[PURCHASED_AMT] = @ASSET_PURCHASE_VAL ,[PO_NUMBER] = @PO_NO,[PO_DATE] = @PO_DATE ,[INVOICE_NO] = @INVOICE_NO,
				[SALE_DATE] = @SALE_DATE ,[SALE_AMT] = @SALE_VAL ,[ASSET_MAKE] = @ASSET_MAKE ,[MODEL_NAME] = @MAKE_MODEL,[ASSET_PROCESS] = @ASSET_PROCESS ,[REMARKS]=@ASSET_REMARKS,
				[SECURITY_CLASSIFICATION] =  @SECURITYCLASSIFICATION ,[ASSET_SIZE] = @ASSET_SIZE,[ASSET_VLAN] = @ASSET_VLAN ,[ASSET_HDD] = @ASSET_HDD,[ASSET_PROCESSOR] = @ASSET_PROCESSOR,
				[ASSET_RAM] =@ASSET_RAM ,[ASSET_IMEI_NO] =@ASSET_IMEINO ,[ASSET_PHONE_MEMORY] = @ASSET_PHONEMEMORY ,[ASSET_SERVICE_PROVIDER] =@SERVICE_PROVIDER ,
				[ASSET_TYPE] = @ASSET_TYPE ,[ASSET_BOE] = @ASSET_BOE ,[ASSET_REGISTER_NO] =@REGISTER_NO ,[BONDED_TYPE] = @BONDED_TYPE ,[CAPITALISED_STATUS] = @CAPITALISED_TYPE, 
				[VERIFIABLE_STATUS] =@VERIFIABLE_TYPE ,[PORT_NO] = @PORT_NO ,[SECURITY_GATE_ENTRY_NO] =@SECURITYGENO ,[SECURITY_GATE_ENTRY_DATE] = @SECURITYGEDATE ,[CREATED_BY] = @CREATED_BY,
				[CREATED_ON] = GETDATE() ,[AMC_WARRANTY_START_DATE] = @AMC_WARRANTY_START_DATE ,[AMC_WARRANTY_END_DATE] = @AMC_WARRANTY_END_DATE,[AMC_WARRANTY] = @AMC_WARRANTY,[WORKSTATION_NO] = @WORKSTATIONNO,
				[COST_CENTER_NO] =@COSTCENTERNO ,[COMPANY_NAME] = @COMP_NAME,[DEPARTMENT] = @DEPARTMENT_CODE ,[ASSET_APPROVED] = 0 ,[PLANT] =@PLANT_CODE ,[PROJECT_NAME] = @PROJECT_NAME,[BOND_NO] = @BOND_NO,
				[INVENTORY_NOTE] = @INVENTORY_NOTE,[ASSET_DESCRIPTION] = @ASSET_DESC,[ASSET_MAIN_TEXT] = @ASSET_MAIN_TEXT,[ACCT_DE] = @ACCT_DE,[ROOM] = @ROOM,[BA] =@BA,[SUB_PROJECT_NAME]=@SUB_PROJECT_NAME,
				[PROJECT_MANAGER]=@PROJECT_MANAGER,[ASSIGN_PRO_TO_EMP]=@ASSIGN_PRO_TO_EMP,[CURRENCY]=@CURRENCY,[TRANSFER_PRICE]=@TRANSFER_PRICE,[LOCAL_CURRENCY]=@LOCAL_CURRENCY
				 WHERE [ASSET_CODE] = @ASSET_CODE AND [COMP_CODE] =@COMP_CODE AND [LOCATION]=@STORAGE_LOC_CODE				
			END
		IF @TYPE = 'GETMAXACQUISITIONID'
			BEGIN
				SELECT ISNULL(MAX(RUNNING_SERIAL_NO),0)+1 AS RSN FROM ASSET_ACQUISITION WHERE CATEGORY_CODE = @CATEGORY_CODE AND LOCATION=@STORAGE_LOC_CODE			
			END
		IF @TYPE = 'CHECKDUPLICATESERIALNO'
			BEGIN
				SELECT COUNT(*) AS SC FROM ASSET_ACQUISITION WHERE SERIAL_CODE = @SERIAL_CODE AND LOCATION=@STORAGE_LOC_CODE			
			END
		IF @TYPE = 'CHECKDUPLICATEIMEINO'
			BEGIN
				SELECT COUNT(*) AS IMEI FROM ASSET_ACQUISITION WHERE ASSET_IMEI_NO = @ASSET_IMEINO AND LOCATION=@STORAGE_LOC_CODE			
			END
		IF @TYPE = 'VALIDLOCATIONCODE'
			BEGIN
				SELECT COUNT(*) AS LOC FROM [LOCATION_MASTER] WHERE [LOC_CODE]=@LOC_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE			
			END
		IF @TYPE = 'VALIDATECOMPLOCATION'
			BEGIN
				SELECT COUNT(*) AS LOCATION FROM STORAGE_LOCATION_MASTER WHERE STORAGE_LOC_CODE=@STORAGE_LOC_CODE AND ACTIVE=1			
			END
		IF @TYPE = 'VALIDCATEGORYCODE'
			BEGIN
				SELECT COUNT(*) AS CAT FROM [CATEGORY_MASTER] WHERE [CATEGORY_CODE]=@CATEGORY_CODE			
			END
		IF @TYPE = 'VALIDSERIALNO'
			BEGIN
				SELECT COUNT(*) AS SNO FROM [ASSET_ACQUISITION] WHERE [SERIAL_CODE] = @SERIAL_CODE			
			END
		IF @TYPE = 'VALIDVENDORCODE'
			BEGIN
				SELECT COUNT(*) AS VENDOR FROM [VENDOR_MASTER] WHERE [VENDOR_CODE] = @VENDOR_CODE AND COMP_CODE=@COMP_CODE	
			END
		IF @TYPE = 'VALIDDEPARTMENTCODE'
			BEGIN
				SELECT COUNT(*) AS DPT FROM [DEPARTMENT_MASTER] WHERE [DEPT_CODE] = @DEPARTMENT_CODE AND COMP_CODE=@COMP_CODE	
			END
		IF @TYPE = 'VALIDEMPLOYEECODE'
			BEGIN
				SELECT [EMPLOYEE_NAME] FROM [EMPLOYEE_MASTER] WHERE [EMPLOYEE_CODE]=@EMP_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE	
			END
		IF @TYPE = 'GETVENDOR'
			BEGIN
				SELECT VENDOR_CODE,VENDOR_NAME FROM VENDOR_MASTER WHERE ACTIVE='1' AND COMP_CODE=@COMP_CODE ORDER BY VENDOR_NAME 	
			END
		IF @TYPE = 'GETVENDORDETAILS'
			BEGIN
				SELECT [VENDOR_CONT_PERSON],[VENDOR_ADDRESS],[VENDOR_EMAIL] FROM [VENDOR_MASTER]
				WHERE [VENDOR_CODE]=@VENDOR_CODE AND COMP_CODE=@COMP_CODE 	
			END
		IF @TYPE = 'UPDATEASSETSERIALNO'
			BEGIN
				UPDATE [ASSET_ACQUISITION] SET [SERIAL_CODE] = @NEW_SERIAL_CODE,[CREATED_BY] = @CREATED_BY,[CREATED_ON] = GETDATE()
				WHERE [ASSET_CODE] = @ASSET_CODE AND [SERIAL_CODE] = @SERIAL_CODE AND [COMP_CODE] = @COMP_CODE	
			END
		IF @TYPE = 'CATEGORYCODECHANGED'
			BEGIN
				SELECT CATEGORY_CODE FROM ASSET_ACQUISITION WHERE ASSET_CODE=@ASSET_CODE AND LOCATION=@STORAGE_LOC_CODE
			END
		IF @TYPE = 'GETPRNFILE'
			BEGIN
				SELECT PRN_FILE_DATA FROM dbo.AIS_LABEL_PRINTING WHERE PRN_NAME = 'AIS_PRN' 	
			END
			
		--IF @TYPE = 'GETVIEWASSETDETAILS'
		--	BEGIN
		--		SELECT AA.*,CM.CATEGORY_NAME,LM.LOC_NAME FROM ASSET_ACQUISITION AA INNER JOIN CATEGORY_MASTER CM ON AA.CATEGORY_CODE = CM.CATEGORY_CODE
		--		INNER JOIN LOCATION_MASTER LM ON AA.ASSET_LOCATION = LM.LOC_CODE WHERE AA.ASSET_TYPE LIKE ''+@ASSET_TYPE+'%' AND AA.ASSET_CODE LIKE ''+@ASSET_CODE+'%'
		--		AND AA.SERIAL_CODE LIKE '" + oPRP.AssetSerialCode + "%' AND AA.ASSET_MAKE LIKE ''+@ASSET_MAKE+'%' AND AA.ASSET_ID LIKE ''+@ASSET_ID+'%' AND AA.PO_NUMBER LIKE ''+@PO_NO+'%'
  --              AND AA.[MODEL_NAME] IN (@MAKE_MODEL)
  --              AND AA.[MODEL_NAME] LIKE ''+@MAKE_MODEL+'%'
		--		AND AA.CATEGORY_CODE LIKE ''+@CATEGORY_CODE+'%' AND AA.ASSET_LOCATION LIKE ''+@ASSET_LOCATION+'%'
		--		AND AA.AMC_WARRANTY LIKE ''+@AMC_WARRANTY+'%' AND AA.VERIFIABLE_STATUS LIKE ''+@VERIFIABLE_TYPE+'%'
		--		AND AA.ASSET_APPROVED = @ASSET_APPROVED AND AA.COMP_CODE=@COMP_CODE            
		--		AND AA.SOLD_SCRAPPED_STATUS IS NULL ORDER BY AA.PORT_NO           
		--		--AND AA.SOLD_SCRAPPED_STATUS = @SOLD_SCRAPPED_STATUS ORDER BY AA.ASSET_CODE,AA.PORT_NO			
		--	END


END









GO
/****** Object:  StoredProcedure [dbo].[sp_AssetAllocation]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Neeraj Saxena
-- ALTER date: July 05, 2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_AssetAllocation]
	@ASSET_TYPE nvarchar(50)=NULL,
	@ASSET_CODE nvarchar(50)=NULL,
	@ASSET_ID nvarchar(50)=NULL,
	@SERIAL_CODE nvarchar(50)=NULL,
	@CATEGORY_CODE nvarchar(50)=NULL,
	@ALLOCATED_PROC_CODE nvarchar(50)=NULL,
	@ASSET_LOCATION nvarchar(50)=NULL,
	@ASSET_ALLOCATED_EMP nvarchar(50)=NULL,
	@TYPE nvarchar(50)=NULL,
	@COMP_CODE nvarchar(50)=NULL,
	@DEPARTMENT_CODE nvarchar(50)=NULL,
	@COMP_NAME nvarchar(50)=NULL,
	@VENDOR_CODE nvarchar(50)=NULL,
	@LOC_CODE nvarchar(50)=NULL,
	@LOC_LEVEL int=NULL,
	@PARENT_CATEGORY nvarchar(50)=NULL,	
	@CATEGORY_LEVEL int=NULL,
	@CUST_ORDR_NO nvarchar(50)=NULL,
	
	
	@ASSET_PROCESS nvarchar(50)=NULL,
	
	@PORT_NO nvarchar(50)=NULL,
	@ASSET_VLAN nvarchar(50)=NULL,
	@ASSET_ALLOCATED bit=NULL,
	@RUNNING_SERIAL_NO INT=NULL,
	
	@ASSET_REMARKS nvarchar(100)=NULL,
	@ASSET_APPROVED bit=NULL,
	@WORKSTATIONNO nvarchar(50)=NULL,	
	@PLANT_CODE nvarchar(50)=NULL,
	@STORAGE_LOC_CODE nvarchar(50)=NULL,	
	@PROJECT_NAME nvarchar(50)=NULL,
	@SUB_PROJECT_NAME nvarchar(50)=NULL,
	@PROJECT_MANAGER nvarchar(50)=NULL,
	@ALLOCATED_TO nvarchar(50)=NULL,
	@ALLOCATED_TO_EMPID nvarchar(50)=NULL,
	@TRANSFER_PRICE DECIMAL(18,2)=NULL,
	@LOCAL_CURRENCY DECIMAL(18,2)=NULL,
	
	@ALLOCATION_DATE datetime=NULL,
	@CREATED_BY nvarchar(50)=NULL	
	
AS
BEGIN
		IF @TYPE = 'GETLOCATION'
			BEGIN
				SELECT LOC_CODE, LOC_NAME FROM LOCATION_MASTER  WHERE PARENT_LOC_CODE LIKE ''+@LOC_CODE+'%' AND LOC_LEVEL=@LOC_LEVEL AND COMP_CODE=@COMP_CODE AND ACTIVE=1
			END
        IF @TYPE = 'POPULATECATEGORY'
			BEGIN
				SELECT CATEGORY_CODE,CATEGORY_NAME FROM CATEGORY_MASTER  WHERE ASSET_TYPE=@ASSET_TYPE AND PARENT_CATEGORY=@PARENT_CATEGORY 
				AND CATEGORY_LEVEL=@CATEGORY_LEVEL AND ACTIVE=1					
			END
		IF @TYPE = 'POPULATECATEGORYFORUPDATE'
			BEGIN
				SELECT CATEGORY_CODE,CATEGORY_NAME FROM CATEGORY_MASTER	WHERE ACTIVE=1		 			
			END
		IF @TYPE = 'POPULATEVENDOR'
			BEGIN
				SELECT VENDOR_CODE,VENDOR_NAME FROM VENDOR_MASTER WHERE ACTIVE='1' AND COMP_CODE=@COMP_CODE ORDER BY VENDOR_NAME			
			END
		
		IF @TYPE = 'ALLOCATEFRESHASSETS'
			BEGIN
				INSERT INTO [ASSET_ALLOCATION] ([ASSET_CODE],[ASSET_ALLOCATION_DATE],[ASSET_ALLOCATED_EMP],[ALLOCATED_EMP_ID],[ALLOCATED_DEPARTMENT],[ALLOCATED_PROCESS],
				[ASSET_LOCATION],[COMP_CODE],[PORT_NO],[VLAN],[WORKSTATION_NO],[CREATED_BY],[CREATED_ON])
				VALUES (@ASSET_CODE,@ALLOCATION_DATE,@ALLOCATED_TO,@ALLOCATED_TO_EMPID,@DEPARTMENT_CODE,@ASSET_PROCESS,
				@ASSET_LOCATION,@COMP_CODE,@PORT_NO,@ASSET_VLAN,@WORKSTATIONNO,@CREATED_BY,GETDATE())			
			END
		
			

END









GO
/****** Object:  StoredProcedure [dbo].[sp_AssetLocationMaster]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Neeraj Saxena
-- ALTER date: July 05, 2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_AssetLocationMaster]	
	@TYPE nvarchar(50)=NULL,

	@Comp_Code varchar(100)=NULL,

	@LOC_CODE NVARCHAR(100)=NULL,	
	@LOC_NAME NVARCHAR(100)=NULL,	
	@PARENT_LOC_CODE nvarchar(50)=NULL,
	@STORAGE_LOC_CODE nvarchar(50)=NULL,
	@LOC_LEVEL INT=NULL,	
	@REMARKS NVARCHAR(100)=NULL,
	@ACTIVE bit=NULL,
	@CREATED_BY nvarchar(50)=NULL,
	@MODIFIED_BY nvarchar(50)=NULL	
	
AS
BEGIN		
		IF @TYPE = 'SAVELOCATION'
			BEGIN				
				INSERT INTO LOCATION_MASTER (Comp_Code,LOC_CODE,LOC_NAME,PARENT_LOC_CODE,STORAGE_LOC_CODE,DESCRIPTION,LOC_LEVEL,ACTIVE,CREATED_ON,CREATED_BY)
                VALUES (@Comp_Code,@LOC_CODE,@LOC_NAME,@PARENT_LOC_CODE,@STORAGE_LOC_CODE,@REMARKS,@LOC_LEVEL,@ACTIVE,GETDATE(),@CREATED_BY)					
			END	
		IF @TYPE = 'UPDATELOCATION'
			BEGIN
				UPDATE [LOCATION_MASTER] SET LOC_NAME=@LOC_NAME,PARENT_LOC_CODE=@PARENT_LOC_CODE,[ACTIVE] = @ACTIVE,
				DESCRIPTION = @REMARKS,[MODIFIED_BY]=@MODIFIED_BY,[MODIFIED_ON]=GETDATE()
                WHERE LOC_CODE=@LOC_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE					
			END				
		IF @TYPE = 'GETLOCATIONDETAILS'
			BEGIN
				SELECT LOC_CODE,LOC_NAME,PARENT_LOC_CODE,STORAGE_LOC_CODE,DESCRIPTION,LOC_LEVEL,ACTIVE,CONVERT(VARCHAR,CREATED_ON,105) AS CREATED_ON,
				CREATED_BY FROM LOCATION_MASTER WHERE STORAGE_LOC_CODE=@STORAGE_LOC_CODE AND ACTIVE=1
			END
		IF @TYPE = 'DELETELOCATION'
			BEGIN
				DELETE FROM LOCATION_MASTER WHERE LOC_CODE=@LOC_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE
			END	
		IF @TYPE = 'CHECKDUPLICATELOCATION'
			BEGIN
				SELECT * FROM LOCATION_MASTER WHERE LOC_CODE=@LOC_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE
			END	
		IF @TYPE = 'GETSLOCATION'
			BEGIN
				SELECT DISTINCT STORAGE_LOC_CODE,STORAGE_LOC_NAME FROM STORAGE_LOCATION_MASTER WHERE ACTIVE=1
			END	
		IF @TYPE = 'GETLOCATIONCODELEVEL'
			BEGIN
				SELECT LOC_CODE,LOC_LEVEL FROM LOCATION_MASTER WHERE LOC_CODE LIKE '' + @LOC_CODE + '%'
			END
		IF @TYPE = 'GETLOCATIONCODE'
			BEGIN
			
				SELECT LOC_CODE AS STORAGE_LOC_CODE, LOC_NAME AS STORAGE_LOC_NAME FROM dbo.LOCATION_MASTER
				WHERE PARENT_LOC_CODE=@LOC_CODE AND LOC_LEVEL=@LOC_LEVEL AND STORAGE_LOC_CODE = @STORAGE_LOC_CODE  AND ACTIVE=1 

				
			END	
		
			
			
END







GO
/****** Object:  StoredProcedure [dbo].[sp_CityMaster]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================

-- Author:	Neeraj Saxena

-- ALTER date: July 05, 2012

-- =============================================

CREATE PROCEDURE [dbo].[sp_CityMaster]	

	@TYPE nvarchar(50)=NULL,	

	@CITY_CODE nvarchar(50)=NULL,

	@COUNTRY_CODE nvarchar(50)=NULL,

	@CITY_NAME nvarchar(50)=NULL,

	@ZIPCODE nvarchar(50)=NULL,

	@REMARKS NVARCHAR(100)=NULL,

	@ACTIVE bit=NULL,

	@CREATED_BY nvarchar(50)=NULL,

	@MODIFIED_BY nvarchar(50)=NULL	

	

AS

BEGIN		

		IF @TYPE = 'SAVECITY'

			BEGIN

				INSERT INTO CITY_MASTER (CITY_CODE,COUNTRY_CODE,CITY_NAME,ZIPCODE,REMARKS,ACTIVE,CREATED_ON,CREATED_BY)

                VALUES (@CITY_CODE,@COUNTRY_CODE,@CITY_NAME,@ZIPCODE,@REMARKS,@ACTIVE,GETDATE(),@CREATED_BY)					

			END	

		IF @TYPE = 'UPDATECITY'

			BEGIN						

				UPDATE CITY_MASTER SET CITY_NAME=@CITY_NAME,ZIPCODE=@ZIPCODE,ACTIVE=@ACTIVE,REMARKS=@REMARKS, 
				 COUNTRY_CODE=@COUNTRY_CODE,
				MODIFIED_BY=@MODIFIED_BY , MODIFIED_ON = GETDATE() WHERE CITY_CODE=@CITY_CODE 

			END			

		IF @TYPE = 'GETCITYDETAILS'

			BEGIN

				SELECT CITY_CODE,COUNTRY_CODE,CITY_NAME,ZIPCODE,REMARKS,ACTIVE,CONVERT(VARCHAR,CREATED_ON,105) AS CREATED_ON,CREATED_BY FROM CITY_MASTER WHERE ACTIVE=1

			END

		IF @TYPE = 'DELETECITY'

			BEGIN

				DELETE FROM CITY_MASTER WHERE CITY_CODE=@CITY_CODE

			END

		IF @TYPE = 'CHECKDUPLICATECITY'

			BEGIN

				SELECT * FROM CITY_MASTER WHERE CITY_CODE=@CITY_CODE AND COUNTRY_CODE=@COUNTRY_CODE

			END	

		IF @TYPE = 'GETCOUNTRY'

			BEGIN

				SELECT COUNTRY_CODE,COUNTRY_NAME FROM COUNTRY_MASTER WHERE ACTIVE=1

			END				

END

















GO
/****** Object:  StoredProcedure [dbo].[sp_CodetMaster]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Neeraj Saxena
-- ALTER date: July 05, 2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_CodetMaster]	
	@TYPE nvarchar(50)=NULL,
	@CODE NVARCHAR(100)=NULL	
	
AS
BEGIN		
		IF @TYPE = 'GETCURRENCY'
			BEGIN				
				SELECT DISTINCT CODE FROM CODE_MASTER WHERE TYPE='CurrencyType'				
			END	
		IF @TYPE = 'GETBONDEDTYPE'
			BEGIN				
				SELECT DISTINCT CODE FROM CODE_MASTER WHERE TYPE='BondedType'
			END	
END









GO
/****** Object:  StoredProcedure [dbo].[sp_CompanyMaster]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Neeraj Saxena
-- ALTER date: July 05, 2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_CompanyMaster]	
	@TYPE nvarchar(50)=NULL,
	@ACTIONTYPE nvarchar(50)=NULL,
	@COMP_CODE NVARCHAR(100)=NULL,	
	@COMP_NAME NVARCHAR(100)=NULL,	
	@STORAGE_LOC_CODE nvarchar(50)=NULL,	
	@PLANT_CODE nvarchar(50)=NULL,
	@NEW_STORAGE_LOC_CODE nvarchar(50)=NULL,	
	@NEW_PLANT_CODE nvarchar(50)=NULL,
	@REMARKS NVARCHAR(100)=NULL,
	@ACTIVE bit=NULL,
	@CREATED_BY nvarchar(50)=NULL,
	@MODIFIED_BY nvarchar(50)=NULL	
	
AS
BEGIN		
		IF @TYPE = 'SAVECOMPANY'
			BEGIN				
				INSERT INTO COMPANY_MASTER (COMP_CODE,COMP_NAME,STORAGE_LOC_CODE,PLANT_CODE,REMARKS,ACTIVE,CREATED_ON,CREATED_BY)
                VALUES (@COMP_CODE,@COMP_NAME,@STORAGE_LOC_CODE,@PLANT_CODE,@REMARKS,@ACTIVE,GETDATE(),@CREATED_BY)					
			END	
		IF @TYPE = 'UPDATECOMPANY'
			BEGIN				
				UPDATE COMPANY_MASTER SET COMP_NAME=@COMP_NAME,STORAGE_LOC_CODE=@NEW_STORAGE_LOC_CODE,PLANT_CODE=@NEW_PLANT_CODE,
				ACTIVE=@ACTIVE,REMARKS=@REMARKS, MODIFIED_BY=@MODIFIED_BY , MODIFIED_ON = GETDATE() WHERE COMP_CODE=@COMP_CODE AND
				STORAGE_LOC_CODE=@STORAGE_LOC_CODE AND PLANT_CODE=@PLANT_CODE					
			END			
		IF @TYPE = 'GETCOMPANYDETAILS'
			BEGIN
				SELECT COMP_CODE,COMP_NAME,PLANT_CODE,STORAGE_LOC_CODE,REMARKS,ACTIVE,CONVERT(VARCHAR,CREATED_ON,105) AS CREATED_ON,
				CREATED_BY FROM COMPANY_MASTER WHERE ACTIVE=1
			END
		IF @TYPE = 'DELETECOMPANY'
			BEGIN
				DELETE FROM COMPANY_MASTER WHERE COMP_CODE=@COMP_CODE
			END	
		IF @TYPE = 'CHECKDUPLICATECOMPANY'
			BEGIN
				SELECT * FROM COMPANY_MASTER WHERE COMP_CODE=@COMP_CODE AND PLANT_CODE=@PLANT_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE
			END
		IF @TYPE = 'GETPLANT'
			BEGIN
				SELECT PLANT_CODE,PLANT_NAME FROM PLANT_MASTER WHERE ACTIVE=1
			END
		IF @TYPE = 'GETSLOCATION'
			BEGIN
				SELECT STORAGE_LOC_CODE,STORAGE_LOC_NAME FROM STORAGE_LOCATION_MASTER WHERE ACTIVE=1
			END		
END









GO
/****** Object:  StoredProcedure [dbo].[sp_CountryMaster]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Neeraj Saxena
-- ALTER date: July 05, 2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_CountryMaster]	
	@TYPE nvarchar(50)=NULL,
	@ACTIONTYPE nvarchar(50)=NULL,
	@COUNTRY_CODE nvarchar(50)=NULL,
	@COUNTRY_NAME nvarchar(50)=NULL,
	@REMARKS NVARCHAR(100)=NULL,
	@ACTIVE bit=NULL,
	@CREATED_BY nvarchar(50)=NULL,
	@MODIFIED_BY nvarchar(50)=NULL	
	
AS
BEGIN		
		IF @TYPE = 'SAVECOUNTRY'
			BEGIN				
				INSERT INTO COUNTRY_MASTER (COUNTRY_CODE,COUNTRY_NAME,REMARKS,ACTIVE,CREATED_ON,CREATED_BY)
                 VALUES (@COUNTRY_CODE,@COUNTRY_NAME,@REMARKS,@ACTIVE,GETDATE(),@CREATED_BY)					
			END	
		IF @TYPE = 'UPDATECOUNTRY'
			BEGIN									
				UPDATE COUNTRY_MASTER SET COUNTRY_NAME=@COUNTRY_NAME,ACTIVE=@ACTIVE,REMARKS=@REMARKS, 
				MODIFIED_BY=@MODIFIED_BY , MODIFIED_ON = GETDATE() WHERE COUNTRY_CODE=@COUNTRY_CODE					
			END			
		IF @TYPE = 'GETCOUNTRYDETAILS'
			BEGIN
				SELECT COUNTRY_CODE,COUNTRY_NAME,REMARKS,ACTIVE,CONVERT(VARCHAR,CREATED_ON,105) AS CREATED_ON,CREATED_BY FROM COUNTRY_MASTER WHERE ACTIVE=1
			END
		IF @TYPE = 'DELETECOUNTRY'
			BEGIN
				DELETE FROM COUNTRY_MASTER WHERE COUNTRY_CODE=@COUNTRY_CODE
			END	
		IF @TYPE = 'CHECKDUPLICATECOUNTRY'
			BEGIN
				SELECT * FROM COUNTRY_MASTER WHERE COUNTRY_CODE=@COUNTRY_CODE
			END			
END









GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteAllDataOfCompany]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Author:		Bar Code India Ltd.
-- ALTER date: 19th January, 2013
-- Description:	Delete all records from all tables based on company name/company code provided.
-- ==========================================================================================
CREATE PROCEDURE [dbo].[sp_DeleteAllDataOfCompany]
	@COMP_CODE nvarchar(50)
AS
BEGIN TRANSACTION

BEGIN TRY	
	SET NOCOUNT ON;
	--DELETE FROM COMPANY_LOCATION WHERE COMP_CODE = @COMP_CODE
	DELETE FROM COMPANY_MASTER WHERE COMP_CODE = @COMP_CODE
	DELETE FROM ASSET_ACQUISITION WHERE COMP_CODE = @COMP_CODE
    DELETE FROM ASSET_ALLOCATION WHERE COMP_CODE = @COMP_CODE
    DELETE FROM ASSET_REPLACEMENT WHERE COMP_CODE = @COMP_CODE
    DELETE FROM ASSET_SOLD_DETAILS WHERE COMP_CODE = @COMP_CODE
    DELETE FROM ASSET_TRANSFER WHERE COMP_CODE = @COMP_CODE
    DELETE FROM CALL_LOG_MGMT WHERE COMP_CODE = @COMP_CODE
    DELETE FROM ASSET_SWAP_HISTORY WHERE COMP_CODE = @COMP_CODE
    DELETE FROM DEPARTMENT_MASTER WHERE COMP_CODE = @COMP_CODE
    DELETE FROM DOCUMENT_MANAGEMENT WHERE COMP_CODE = @COMP_CODE
    DELETE FROM EMPLOYEE_MASTER WHERE COMP_CODE = @COMP_CODE
    DELETE FROM GATEPASS_ASSETS WHERE COMP_CODE = @COMP_CODE
    DELETE FROM GATEPASS_GENERATION WHERE COMP_CODE = @COMP_CODE
    DELETE FROM GROUP_MASTER WHERE COMP_CODE = @COMP_CODE
    DELETE FROM GROUP_RIGHTS WHERE COMP_CODE = @COMP_CODE
    DELETE FROM LOCATION_MASTER WHERE COMP_CODE = @COMP_CODE
    DELETE FROM PROCESS_MASTER WHERE COMP_CODE = @COMP_CODE
    DELETE FROM RECONCILED_ASSET_CODES WHERE COMP_CODE = @COMP_CODE
    DELETE FROM RECONCILED_SERIAL_CODES WHERE COMP_CODE = @COMP_CODE
    DELETE FROM USER_ACCOUNTS WHERE COMP_CODE = @COMP_CODE
    DELETE FROM VENDOR_ESCALATION_MATRIX WHERE COMP_CODE = @COMP_CODE
    DELETE FROM VENDOR_MASTER WHERE COMP_CODE = @COMP_CODE
    DELETE FROM PRINTING_LOG WHERE COMP_CODE = @COMP_CODE
END TRY
	BEGIN CATCH
		SELECT
			'ERROR' AS Status 
			,ERROR_NUMBER() AS ErrorNumber
			,ERROR_LINE() AS ErrorLine
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_MESSAGE() AS ErrorMessage;

		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH;

IF @@TRANCOUNT > 0
    COMMIT TRANSACTION;









GO
/****** Object:  StoredProcedure [dbo].[sp_EmployeeMaster]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_EmployeeMaster]	

	@TYPE nvarchar(50)=NULL,

	@Comp_Code NVARCHAR(100)=NULL,	
	@EMP_CODE NVARCHAR(100)=NULL,	

	@EMP_NAME NVARCHAR(100)=NULL,	

	@EMP_LOC_CODE nvarchar(50)=NULL,

	@STORAGE_LOC_CODE nvarchar(50)=NULL,

	@PROJECT_CODE nvarchar(50)=NULL,	

	@DEPT_CODE nvarchar(50)=NULL,

	@EMP_EMAIL nvarchar(50)=NULL,

	@EMP_PHONE nvarchar(50)=NULL,

	@EMP_DOJ nvarchar(50)=NULL,

	@REPORTING_MNGR nvarchar(50)=NULL,

	@REMARKS NVARCHAR(100)=NULL,

	@ACTIVE bit=NULL,

	@CREATED_BY nvarchar(50)=NULL,

	@MODIFIED_BY nvarchar(50)=NULL	

	

AS

BEGIN		

		IF @TYPE = 'SAVEEMPLOYEE'

			BEGIN				

				INSERT INTO EMPLOYEE_MASTER (Comp_Code , EMPLOYEE_CODE,EMPLOYEE_NAME,EMP_LOC_CODE,EMP_PROJECT_CODE,EMP_DEPT_CODE,EMP_REPORTING_TO,

				EMP_EMAIL,EMP_PHONE,EMP_DOJ,STORAGE_LOC_CODE,REMARKS,ACTIVE,CREATED_ON,CREATED_BY)

                VALUES (@Comp_Code,@EMP_CODE,@EMP_NAME,@EMP_LOC_CODE,@PROJECT_CODE,@DEPT_CODE,@REPORTING_MNGR,@EMP_EMAIL,@EMP_PHONE,@EMP_DOJ,

				@STORAGE_LOC_CODE,@REMARKS,@ACTIVE,GETDATE(),@CREATED_BY)					

			END	

		IF @TYPE = 'UPDATEEMPLOYEE'

			BEGIN

				UPDATE [EMPLOYEE_MASTER] SET [EMPLOYEE_NAME]=@EMP_NAME,[EMP_LOC_CODE]=@EMP_LOC_CODE,EMP_PROJECT_CODE=@PROJECT_CODE,

				[EMP_REPORTING_TO]=@REPORTING_MNGR,[EMP_EMAIL]=@EMP_EMAIL ,[EMP_PHONE]=@EMP_PHONE,[ACTIVE] = @ACTIVE,

				[REMARKS] = @REMARKS,[MODIFIED_BY]=@MODIFIED_BY,[MODIFIED_ON]=GETDATE()

                WHERE [EMPLOYEE_CODE]=@EMP_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE					

			END

		IF @TYPE = 'UPLOADEMPLOYEEDETAILS'

			BEGIN				

				INSERT INTO EMPLOYEE_MASTER (Comp_Code ,EMPLOYEE_CODE,EMPLOYEE_NAME,EMP_LOC_CODE,EMP_PROJECT_CODE,EMP_REPORTING_TO,

				EMP_EMAIL,EMP_PHONE,EMP_DOJ,STORAGE_LOC_CODE,REMARKS,ACTIVE,CREATED_ON,CREATED_BY)

                VALUES (@Comp_Code,@EMP_CODE,@EMP_NAME,@EMP_LOC_CODE,@PROJECT_CODE,@REPORTING_MNGR,@EMP_EMAIL,@EMP_PHONE,@EMP_DOJ,

				@STORAGE_LOC_CODE,@REMARKS,@ACTIVE,GETDATE(),@CREATED_BY)					

			END				

		IF @TYPE = 'GETEMPLOYEEDETAILS'

			BEGIN

				SELECT EMPLOYEE_CODE,EMPLOYEE_NAME,EMP_LOC_CODE,EMP_PROJECT_CODE,EMP_DEPT_CODE,EMP_REPORTING_TO,

				EMP_EMAIL,EMP_DOJ,EMP_PHONE,STORAGE_LOC_CODE,REMARKS,ACTIVE,CONVERT(VARCHAR,CREATED_ON,105) AS CREATED_ON,

				CREATED_BY FROM EMPLOYEE_MASTER WHERE STORAGE_LOC_CODE=@STORAGE_LOC_CODE AND ACTIVE=1

			END

		IF @TYPE = 'DELETEEMPLOYEE'

			BEGIN

				DELETE FROM EMPLOYEE_MASTER WHERE [EMPLOYEE_CODE]=@EMP_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE

			END	

		IF @TYPE = 'CHECKDUPLICATEEMPLOYEE'

			BEGIN

				SELECT * FROM EMPLOYEE_MASTER WHERE [EMPLOYEE_CODE]=@EMP_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE

			END

		IF @TYPE = 'CHECKDUPLICATEEMAILID'

			BEGIN

				SELECT * FROM EMPLOYEE_MASTER WHERE [EMPLOYEE_CODE]!=@EMP_CODE AND STORAGE_LOC_CODE=@STORAGE_LOC_CODE AND EMP_EMAIL=@EMP_EMAIL

			END

		IF @TYPE = 'GETPROJECT'

			BEGIN

				SELECT DISTINCT PROJECT_CODE,PROJECT_NAME FROM PROJECT_MASTER WHERE LOCATION_CODE=@STORAGE_LOC_CODE AND ACTIVE=1

			END

		IF @TYPE = 'GETRMEMPLOYEE'

			BEGIN

				SELECT DISTINCT EMPLOYEE_CODE,EMPLOYEE_NAME FROM EMPLOYEE_MASTER WHERE  ACTIVE=1

			END

		IF @TYPE = 'GETCOMPANY'

			BEGIN

				SELECT COMP_CODE,COMP_NAME FROM COMPANY_MASTER WHERE ACTIVE=1

			END	

		IF @TYPE = 'GETSLOCATION'

			BEGIN

				SELECT DISTINCT STORAGE_LOC_CODE,STORAGE_LOC_NAME FROM STORAGE_LOCATION_MASTER WHERE ACTIVE=1

			END	

END



GO
/****** Object:  StoredProcedure [dbo].[sp_GetAssetSummaryReport]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===============================================================================
-- Author     :	Bar Code India Ltd.
-- ALTER date: 4th October, 2012
-- Description:	The procedure generates asset count report for all locations
--				across the country as per criteria provided.
-- ===============================================================================
CREATE PROCEDURE [dbo].[sp_GetAssetSummaryReport]
	@CATEGORY_CODE nvarchar(50),
	@ASSET_LOCATION nvarchar(50),
	@DEPARTMENT_CODE nvarchar(50),
	@PROCESS_CODE nvarchar(50),
	@ASSET_MAKE nvarchar(50),
	@MODEL_NAME nvarchar(50)
AS
BEGIN	
	SET NOCOUNT ON;
		SELECT COUNT(*) AS ASSET_COUNT,CM.[CATEGORY_NAME],LM.[LOC_NAME],DM.[DEPT_NAME],
		PM.[PROCESS_NAME],AA.[ASSET_MAKE],AA.[MODEL_NAME],AA.[CATEGORY_CODE],AA.[ASSET_LOCATION],
		AA.[DEPARTMENT],AA.[ASSET_PROCESS] FROM 
		[ASSET_ACQUISITION] AA INNER JOIN [CATEGORY_MASTER] CM 
			ON AA.[CATEGORY_CODE] = CM.[CATEGORY_CODE]
		INNER JOIN [LOCATION_MASTER] LM 
			ON AA.[ASSET_LOCATION] = LM.[LOC_CODE]
		INNER JOIN [DEPARTMENT_MASTER] DM 
			ON AA.[DEPARTMENT] = DM.[DEPT_CODE]
		INNER JOIN [PROCESS_MASTER] PM 
			ON AA.[ASSET_PROCESS] = PM.[PROCESS_CODE]
		WHERE AA.[CATEGORY_CODE] LIKE @CATEGORY_CODE + '%' AND AA.[ASSET_LOCATION] LIKE @ASSET_LOCATION + '%'
		AND AA.[DEPARTMENT] LIKE @DEPARTMENT_CODE + '%' AND AA.[ASSET_PROCESS] LIKE @PROCESS_CODE + '%'
		AND AA.[ASSET_MAKE] LIKE @ASSET_MAKE + '%' AND AA.[MODEL_NAME] IN (@MODEL_NAME)
		AND AA.[COMP_CODE] = LM.[COMP_CODE] AND AA.[COMP_CODE] = DM.[COMP_CODE] AND AA.[COMP_CODE] = PM.[COMP_CODE]
		GROUP BY CM.[CATEGORY_NAME],LM.[LOC_NAME],DM.[DEPT_NAME],PM.[PROCESS_NAME],AA.[ASSET_MAKE],AA.[MODEL_NAME],
		AA.[CATEGORY_CODE],AA.[ASSET_LOCATION],AA.[DEPARTMENT],AA.[ASSET_PROCESS]
    SET NOCOUNT OFF;
END









GO
/****** Object:  StoredProcedure [dbo].[sp_InsertInitialData]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =====================================================================
-- Author	  :	Vipul Goel
-- ALTER date: 15-06-2012
-- Description:	Creates the Initial Data Entry for a new site/location.
-- Modified By: Neeraj Saxena (18/Sept/2012)
-- =====================================================================
CREATE PROCEDURE [dbo].[sp_InsertInitialData]
@COMP_CODE NVARCHAR(50),
@COMP_NAME NVARCHAR(50),
@LOC_CODE NVARCHAR(50),
@LOC_NAME NVARCHAR(50),
@GROUP_CODE NVARCHAR(50),
@GROUP_NAME NVARCHAR(50),
@USER_ID NVARCHAR(50),
@USER_NAME NVARCHAR(50),
@PASSWORD NVARCHAR(50),
@ADMIN_EMAIL NVARCHAR(50),
@TECHOPS_EMAIL NVARCHAR(50),
@SUPER_USER NVARCHAR(50)
AS

BEGIN TRANSACTION
--- Exec sp_InsertInitialData 'C0','COMPANY ZERO','L0','LOCATION ZERO','G0','GROUP ZERO','U0','USER ZERO','ZERO','test@test.com','test1@test1.com','sysadmin';
	BEGIN TRY		
		SET NOCOUNT ON;

   	--- ALTER a Company
		INSERT INTO COMPANY_MASTER (COMP_CODE,COMP_NAME,ACTIVE,CREATED_BY,CREATED_ON)
		VALUES(@COMP_CODE,@COMP_NAME,'1',@SUPER_USER,GETDATE());
		
	--- ALTER a Default Group for a Particular Company
		INSERT INTO GROUP_MASTER (GROUP_CODE,GROUP_NAME,ACTIVE,COMP_CODE,ASSET_TYPE,CREATED_BY,CREATED_ON)
		VALUES(@GROUP_CODE,@GROUP_NAME,'1',@COMP_CODE,'ADMIN,IT',@SUPER_USER,GETDATE());

	--- Assign Full rights to the above created group
		INSERT INTO GROUP_RIGHTS
		SELECT @COMP_CODE AS CMP_CODE,@GROUP_CODE AS GCODE,PAGE_CODE,PAGE_NAME,1,1,1,1,1 FROM PAGE_MASTER

	--- ALTER a Default User for a particular company
		INSERT INTO USER_ACCOUNTS (USER_ID,USER_NAME,PASSWORD,USER_EMAIL,COMP_CODE,LOCATION_CODE,GROUP_CODE,ACTIVE,CREATED_BY,CREATED_ON,TECHOPS_EMAIL)
		VALUES(@USER_ID,@USER_NAME,@PASSWORD,@ADMIN_EMAIL,@COMP_CODE,@COMP_CODE + '-' + @LOC_CODE +'-00-00-00-00',@GROUP_CODE,'1',@SUPER_USER,GETDATE(),@TECHOPS_EMAIL);
		
	--- ALTER a Default location for a Particular Company
		INSERT INTO LOCATION_MASTER (LOC_CODE,LOC_NAME,PARENT_LOC_CODE,COMP_CODE,LOC_LEVEL,ACTIVE,CREATED_BY,CREATED_ON)
		VALUES(@COMP_CODE + '-' + @LOC_CODE +'-00-00-00-00',@LOC_NAME,'',@COMP_CODE,1,'1',@SUPER_USER,GETDATE());

	END TRY

	BEGIN CATCH
		SELECT
			'ERROR' AS Status 
			,ERROR_NUMBER() AS ErrorNumber
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;

		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH;

IF @@TRANCOUNT > 0
    COMMIT TRANSACTION;









GO
/****** Object:  StoredProcedure [dbo].[sp_PlantMaster]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 -- =============================================

-- Author:	Neeraj Saxena

-- ALTER date: July 05, 2012

-- =============================================

CREATE PROCEDURE [dbo].[sp_PlantMaster]	

	@TYPE nvarchar(50)=NULL,

	@ACTIONTYPE nvarchar(50)=NULL,

	@CITY_CODE nvarchar(50)=NULL,

	@PLANT_CODE nvarchar(50)=NULL,

	@PLANT_NAME nvarchar(50)=NULL,	

	@REMARKS NVARCHAR(100)=NULL,

	@ACTIVE bit=NULL,

	@CREATED_BY nvarchar(50)=NULL,

	@MODIFIED_BY nvarchar(50)=NULL	

	

AS

BEGIN		

		IF @TYPE = 'SAVEPLANT'

			BEGIN			

				INSERT INTO PLANT_MASTER (PLANT_CODE,CITY_CODE,PLANT_NAME,REMARKS,ACTIVE,CREATED_ON,CREATED_BY)

                VALUES (@PLANT_CODE,@CITY_CODE,@PLANT_NAME,@REMARKS,@ACTIVE,GETDATE(),@CREATED_BY)					

			END	

		IF @TYPE = 'UPDATEPLANT'

			BEGIN		
			
			UPDATE  PLANT_MASTER SET PLANT_NAME=@PLANT_NAME,ACTIVE=@ACTIVE,REMARKS=@REMARKS, 
					CITY_CODE = @CITY_CODE , MODIFIED_BY=@MODIFIED_BY , MODIFIED_ON = GETDATE()
                    WHERE PLANT_CODE=@PLANT_CODE							

				--UPDATE PLANT_MASTER SET PLANT_NAME=@PLANT_NAME,ACTIVE=@ACTIVE,REMARKS=@REMARKS, 
				--MODIFIED_BY=@MODIFIED_BY , MODIFIED_ON = GETDATE() WHERE PLANT_CODE=@PLANT_CODE					

			END		

		IF @TYPE = 'GETPLANTDETAILS'

			BEGIN

				SELECT PLANT_CODE,PLANT_NAME,CITY_CODE,REMARKS,ACTIVE,CONVERT(VARCHAR,CREATED_ON,105) AS CREATED_ON,CREATED_BY FROM PLANT_MASTER WHERE ACTIVE=1

			END

		IF @TYPE = 'DELETEPLANT'

			BEGIN

				DELETE FROM PLANT_MASTER WHERE PLANT_CODE=@PLANT_CODE

			END	

		IF @TYPE = 'CHECKDUPLICATEPLANT'

			BEGIN

				SELECT * FROM PLANT_MASTER WHERE PLANT_CODE=@PLANT_CODE AND CITY_CODE=@CITY_CODE

			END	

		IF @TYPE = 'GETCITY'

			BEGIN

				SELECT CITY_CODE,CITY_NAME FROM CITY_MASTER WHERE ACTIVE=1

			END		

END


GO
/****** Object:  StoredProcedure [dbo].[sp_ProjectMaster]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_ProjectMaster]	



	@TYPE nvarchar(50)=NULL,


	@Comp_Code varchar(50)= NULL,
	@DEPT_CODE nvarchar(50)=NULL,



	@LOCATION_CODE NVARCHAR(100)=NULL,	



	@PROJECT_NAME NVARCHAR(100)=NULL,	



	@PROJECT_CODE nvarchar(50)=NULL,	



	@REMARKS NVARCHAR(100)=NULL,



	@PROJECT_MANAGER NVARCHAR(20)=NULL,



	@PM_EMAIL NVARCHAR(20)=NULL,



	@ACTIVE bit=NULL,



	@CREATED_BY nvarchar(50)=NULL,



	@MODIFIED_BY nvarchar(50)=NULL	



	



AS



BEGIN		



		IF @TYPE = 'SAVEPROJECT'



			BEGIN				



				INSERT INTO PROJECT_MASTER (COMP_CODE,DEPT_CODE ,PROJECT_CODE,PROJECT_NAME,LOCATION_CODE,REMARKS,PROJECT_MANAGER ,PM_EMAIL, ACTIVE,CREATED_ON,CREATED_BY )



                VALUES (@Comp_Code ,@DEPT_CODE, @PROJECT_CODE,@PROJECT_NAME,@LOCATION_CODE,@REMARKS,@PROJECT_MANAGER ,@PM_EMAIL , @ACTIVE,GETDATE(),@CREATED_BY)					



			END	



		IF @TYPE = 'UPDATEPROJECT'



			BEGIN				



				UPDATE PROJECT_MASTER SET PROJECT_NAME=@PROJECT_NAME, ACTIVE=@ACTIVE,REMARKS=@REMARKS,

				 PROJECT_MANAGER =@PROJECT_MANAGER ,PM_EMAIL  =@PM_EMAIL, DEPT_CODE = @DEPT_CODE ,

				 MODIFIED_BY=@MODIFIED_BY , 



				MODIFIED_ON = GETDATE()	WHERE PROJECT_CODE=@PROJECT_CODE 



			END			



		IF @TYPE = 'GETPROJECTDETAILS'

			BEGIN

				--		SELECT PROJECT_CODE,PROJECT_NAME,LOCATION_CODE,REMARKS, PROJECT_MANAGER , PM_EMAIL, ACTIVE,CONVERT(VARCHAR,CREATED_ON,105) AS CREATED_ON,
				--CREATED_BY FROM PROJECT_MASTER WHERE LOCATION_CODE=@LOCATION_CODE AND ACTIVE=1

				SELECT  DM.DEPT_NAME , PM.PROJECT_CODE, PM.PROJECT_NAME, PM.LOCATION_CODE,PM.REMARKS, PM.PROJECT_MANAGER ,
				 PM.PM_EMAIL, PM.ACTIVE,CONVERT(VARCHAR,PM.CREATED_ON,105) AS CREATED_ON,PM.CREATED_BY 
				
				 FROM 
			PROJECT_MASTER PM  INNER JOIN DEPARTMENT_MASTER DM ON PM.DEPT_CODE =DM.DEPT_CODE
				 WHERE 
				 PM.LOCATION_CODE=@LOCATION_CODE AND PM.ACTIVE=1



			END



		IF @TYPE = 'DELETEPROJECT'



			BEGIN



				DELETE FROM PROJECT_MASTER WHERE PROJECT_CODE=@PROJECT_CODE AND LOCATION_CODE=@LOCATION_CODE



			END	



		IF @TYPE = 'CHECKDUPLICATEPROJECT'



			BEGIN



				SELECT * FROM PROJECT_MASTER WHERE PROJECT_CODE=@PROJECT_CODE AND LOCATION_CODE=@LOCATION_CODE



			END		



END



GO
/****** Object:  StoredProcedure [dbo].[sp_ReportAssetAllocation]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Neeraj Saxena
-- ALTER date: July 05, 2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_ReportAssetAllocation]
	@ASSET_TYPE nvarchar(50),
	@CATEGORY_CODE nvarchar(50),
	@ALLOCATED_PROC_CODE nvarchar(50),
	@ASSET_LOCATION nvarchar(50),
	@ASSET_ALLOCATED_EMP nvarchar(50),
	@ALLOCATION_TYPE nvarchar(50),
	@COMP_CODE nvarchar(50),
	@FROMDATE nvarchar(50),
	@TODATE nvarchar(50)
AS
BEGIN	
	SET NOCOUNT ON;
		IF @ALLOCATION_TYPE = 'ALLOCATED'
			BEGIN
				SELECT dbo.COMPANY_MASTER.COMP_NAME, dbo.ASSET_ALLOCATION.ASSET_CODE, CONVERT(VARCHAR, 
				dbo.ASSET_ALLOCATION.ASSET_ALLOCATION_DATE, 105) AS ASSET_ALLOCATION_DATE, dbo.ASSET_ACQUISITION.ASSET_ALLOCATED, 
				dbo.PROCESS_MASTER.PROCESS_NAME, dbo.EMPLOYEE_MASTER.EMPLOYEE_NAME, dbo.LOCATION_MASTER.LOC_NAME, CONVERT(VARCHAR, 
				NULLIF(dbo.ASSET_ALLOCATION.EXPECTED_RTN_DATE,''), 105) AS EXPECTED_RTN_DATE, CONVERT(VARCHAR, NULLIF(dbo.ASSET_ALLOCATION.ACTUAL_RTN_DATE,''), 
				105) AS ACTUAL_RTN_DATE, dbo.CATEGORY_MASTER.CATEGORY_NAME, dbo.CATEGORY_MASTER.ASSET_TYPE, 
				dbo.ASSET_ALLOCATION.ASSET_ALLOCATED_EMP, dbo.ASSET_ALLOCATION.ALLOCATED_PROCESS, 
				dbo.ASSET_ALLOCATION.ASSET_LOCATION, dbo.CATEGORY_MASTER.CATEGORY_CODE, 
				dbo.ASSET_ALLOCATION.ASSET_ALLOCATION_DATE FROM dbo.ASSET_ALLOCATION INNER JOIN
				dbo.PROCESS_MASTER ON dbo.ASSET_ALLOCATION.ALLOCATED_PROCESS = dbo.PROCESS_MASTER.PROCESS_CODE AND 
				dbo.ASSET_ALLOCATION.COMP_CODE = dbo.PROCESS_MASTER.COMP_CODE INNER JOIN
				dbo.LOCATION_MASTER ON dbo.ASSET_ALLOCATION.ASSET_LOCATION = dbo.LOCATION_MASTER.LOC_CODE INNER JOIN
				dbo.EMPLOYEE_MASTER ON dbo.ASSET_ALLOCATION.ALLOCATED_EMP_ID = dbo.EMPLOYEE_MASTER.EMPLOYEE_CODE AND 
				dbo.PROCESS_MASTER.COMP_CODE = dbo.EMPLOYEE_MASTER.COMP_CODE AND 
				dbo.LOCATION_MASTER.COMP_CODE = dbo.EMPLOYEE_MASTER.COMP_CODE INNER JOIN
				dbo.ASSET_ACQUISITION ON dbo.ASSET_ALLOCATION.ASSET_CODE = dbo.ASSET_ACQUISITION.ASSET_CODE INNER JOIN
				dbo.CATEGORY_MASTER ON dbo.ASSET_ACQUISITION.CATEGORY_CODE = dbo.CATEGORY_MASTER.CATEGORY_CODE INNER JOIN
				dbo.COMPANY_MASTER ON dbo.ASSET_ALLOCATION.COMP_CODE = dbo.COMPANY_MASTER.COMP_CODE
				WHERE dbo.CATEGORY_MASTER.ASSET_TYPE LIKE @ASSET_TYPE + '%'
				AND dbo.CATEGORY_MASTER.CATEGORY_CODE LIKE @CATEGORY_CODE + '%' AND dbo.ASSET_ALLOCATION.ALLOCATED_PROCESS LIKE @ALLOCATED_PROC_CODE + '%'
				AND dbo.ASSET_ALLOCATION.ASSET_LOCATION LIKE @ASSET_LOCATION + '%' 
				AND dbo.ASSET_ALLOCATION.ALLOCATED_EMP_ID LIKE @ASSET_ALLOCATED_EMP + '%'
				AND dbo.ASSET_ALLOCATION.ASSET_ALLOCATION_DATE >= CONVERT(DATETIME,@FROMDATE,105)
				AND dbo.ASSET_ALLOCATION.ASSET_ALLOCATION_DATE <= CONVERT(DATETIME,@TODATE,105) 
				AND dbo.ASSET_ALLOCATION.COMP_CODE = @COMP_CODE AND dbo.ASSET_ALLOCATION.ACTUAL_RTN_DATE IS NULL
			END
        IF @ALLOCATION_TYPE = 'RETURNED'
			BEGIN
				SELECT dbo.COMPANY_MASTER.COMP_NAME, dbo.ASSET_ALLOCATION.ASSET_CODE, CONVERT(VARCHAR, 
				dbo.ASSET_ALLOCATION.ASSET_ALLOCATION_DATE, 105) AS ASSET_ALLOCATION_DATE, dbo.ASSET_ACQUISITION.ASSET_ALLOCATED, 
				dbo.PROCESS_MASTER.PROCESS_NAME, dbo.EMPLOYEE_MASTER.EMPLOYEE_NAME, dbo.LOCATION_MASTER.LOC_NAME, CONVERT(VARCHAR, 
				NULLIF(dbo.ASSET_ALLOCATION.EXPECTED_RTN_DATE,''), 105) AS EXPECTED_RTN_DATE, CONVERT(VARCHAR, NULLIF(dbo.ASSET_ALLOCATION.ACTUAL_RTN_DATE,''), 
				105) AS ACTUAL_RTN_DATE, dbo.CATEGORY_MASTER.CATEGORY_NAME, dbo.CATEGORY_MASTER.ASSET_TYPE, 
				dbo.ASSET_ALLOCATION.ASSET_ALLOCATED_EMP, dbo.ASSET_ALLOCATION.ALLOCATED_PROCESS, 
				dbo.ASSET_ALLOCATION.ASSET_LOCATION, dbo.CATEGORY_MASTER.CATEGORY_CODE, 
				dbo.ASSET_ALLOCATION.ASSET_ALLOCATION_DATE FROM dbo.ASSET_ALLOCATION INNER JOIN
				dbo.PROCESS_MASTER ON dbo.ASSET_ALLOCATION.ALLOCATED_PROCESS = dbo.PROCESS_MASTER.PROCESS_CODE AND 
				dbo.ASSET_ALLOCATION.COMP_CODE = dbo.PROCESS_MASTER.COMP_CODE INNER JOIN
				dbo.LOCATION_MASTER ON dbo.ASSET_ALLOCATION.ASSET_LOCATION = dbo.LOCATION_MASTER.LOC_CODE INNER JOIN
				dbo.EMPLOYEE_MASTER ON dbo.ASSET_ALLOCATION.ALLOCATED_EMP_ID = dbo.EMPLOYEE_MASTER.EMPLOYEE_CODE AND 
				dbo.PROCESS_MASTER.COMP_CODE = dbo.EMPLOYEE_MASTER.COMP_CODE AND 
				dbo.LOCATION_MASTER.COMP_CODE = dbo.EMPLOYEE_MASTER.COMP_CODE INNER JOIN
				dbo.ASSET_ACQUISITION ON dbo.ASSET_ALLOCATION.ASSET_CODE = dbo.ASSET_ACQUISITION.ASSET_CODE INNER JOIN
				dbo.CATEGORY_MASTER ON dbo.ASSET_ACQUISITION.CATEGORY_CODE = dbo.CATEGORY_MASTER.CATEGORY_CODE INNER JOIN
				dbo.COMPANY_MASTER ON dbo.ASSET_ALLOCATION.COMP_CODE = dbo.COMPANY_MASTER.COMP_CODE
				WHERE dbo.CATEGORY_MASTER.ASSET_TYPE LIKE @ASSET_TYPE + '%'
				AND dbo.CATEGORY_MASTER.CATEGORY_CODE LIKE @CATEGORY_CODE + '%' AND dbo.ASSET_ALLOCATION.ALLOCATED_PROCESS LIKE @ALLOCATED_PROC_CODE + '%'
				AND dbo.ASSET_ALLOCATION.ASSET_LOCATION LIKE @ASSET_LOCATION + '%' 
				AND dbo.ASSET_ALLOCATION.ALLOCATED_EMP_ID LIKE @ASSET_ALLOCATED_EMP + '%'
				AND dbo.ASSET_ALLOCATION.ASSET_ALLOCATION_DATE >= CONVERT(DATETIME,@FROMDATE,105)
				AND dbo.ASSET_ALLOCATION.ASSET_ALLOCATION_DATE <= CONVERT(DATETIME,@TODATE,105) 
				AND dbo.ASSET_ALLOCATION.COMP_CODE = @COMP_CODE AND dbo.ASSET_ALLOCATION.ACTUAL_RTN_DATE IS NOT NULL							
			END
END









GO
/****** Object:  StoredProcedure [dbo].[sp_ReportAssetDashBoard]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================================
-- Author	  :	Bar Code India Ltd.
-- ALTER date: 10th October, 2012
-- Description:	The query returns asset dashboard details for each category.
-- Modify date: 12th October, 2012
-- =========================================================================
CREATE PROCEDURE [dbo].[sp_ReportAssetDashBoard]
	@ASSET_LOCATION NVARCHAR(50),
	@COMPANY_CODE NVARCHAR(50),
	@TYPE NVARCHAR(50)
AS
BEGIN	
	SET NOCOUNT ON;
		IF @TYPE = 'PRODUCTION'
			BEGIN
				SELECT DP.DT_PROD,LP.LT_PROD,MP.MN_PROD,MC.MC_PROD,SP.ST_PROD,
				SVP.SV_PROD,TCLP.TC_PROD,IPP.IP_PROD,BBP.BB_PROD,PJP.PR_PROD,PRP.PT_PROD,PPP.PP_PROD,SWP.SW_PROD,
				RTP.RT_PROD,FWP.FW_PROD,BMP.BM_PROD,SC.SC_PROD
				FROM
				(	-- Desktop
					SELECT COUNT(*) AS DT_PROD FROM [ASSET_ACQUISITION]
					WHERE [CATEGORY_CODE]='IT-CO-DT-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS DP,
				(	-- Laptop
					SELECT COUNT(*) AS LT_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-LT-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS LP,
				(	-- Monitor
					SELECT COUNT(*) AS MN_PROD FROM [ASSET_ACQUISITION]
					WHERE [CATEGORY_CODE]='IT-CO-MN-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MP,
				(	-- Miscellaneous
					SELECT COUNT(*) AS MC_PROD FROM [ASSET_ACQUISITION]
					WHERE [CATEGORY_CODE]='IT-MS-00-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MC,
				(
					-- Scanner
					SELECT COUNT(*) AS SC_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SC-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SC,
				(	-- Storage
					SELECT COUNT(*) AS ST_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-ST-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SP,
				(	-- Server
					SELECT COUNT(*) AS SV_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SV-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SVP,
				(	-- Thin Client
					SELECT COUNT(*) AS TC_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-TC-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS TCLP,
				(	-- IP/Avaya Phone
					SELECT COUNT(*) AS IP_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-AV-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS IPP,
				(	-- Blackberry
					SELECT COUNT(*) AS BB_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BB-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BBP,
				(	-- Projector
					SELECT COUNT(*) AS PR_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PR-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PJP,
				(	-- Printer
					SELECT COUNT(*) AS PT_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PT-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PRP,
				(	-- PSTN Phone
					SELECT COUNT(*) AS PP_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-LP-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PPP,
				(	-- Switch
					SELECT COUNT(*) AS SW_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-SW-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SWP,
				(	-- Router
					SELECT COUNT(*) AS RT_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-RT-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS RTP,
				(	-- Firewall
					SELECT COUNT(*) AS FW_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-FW-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS FWP,
				(	-- Biometrics
					SELECT COUNT(*) AS BM_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BM-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BMP
			END
		ELSE IF @TYPE = 'STOCK'
			BEGIN
				SELECT DS.DT_STK,LS.LT_STK,MS.MN_STK,MC.MC_STK,SS.ST_STK,
				SVS.SV_STK,TCLS.TC_STK,IPS.IP_STK,BBS.BB_STK,PJS.PR_STK,PRS.PT_STK,PPS.PP_STK,SWS.SW_STK,
				RTS.RT_STK,FWS.FW_STK,BMS.BM_STK,SC.SC_STK
				FROM
				(
					SELECT COUNT(*) AS DT_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-DT-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS DS,
				(
					SELECT COUNT(*) AS LT_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-LT-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS LS,
				(
					SELECT COUNT(*) AS MN_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-MN-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MS,
				(
					SELECT COUNT(*) AS MC_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-MS-00-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MC,
				(
					SELECT COUNT(*) AS SC_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SC-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SC,
				(
					SELECT COUNT(*) AS ST_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-ST-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SS,
				(
					SELECT COUNT(*) AS SV_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SV-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SVS,
				(
					SELECT COUNT(*) AS TC_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-TC-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS TCLS,
				(
					SELECT COUNT(*) AS IP_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-AV-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS IPS,
				(
					SELECT COUNT(*) AS BB_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BB-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BBS,
				(
					SELECT COUNT(*) AS PR_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PR-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PJS,
				(
					SELECT COUNT(*) AS PT_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PT-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PRS,
				(
					SELECT COUNT(*) AS PP_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-LP-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PPS,
				(
					SELECT COUNT(*) AS SW_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-SW-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SWS,
				(
					SELECT COUNT(*) AS RT_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-RT-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS RTS,
				(
					SELECT COUNT(*) AS FW_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-FW-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS FWS,
				(
					SELECT COUNT(*) AS BM_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BM-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BMS
			END
		ELSE IF @TYPE = 'FAULTY'
			BEGIN
				SELECT DTF.DT_FLT,LTF.LT_FLT,MNF.MN_FLT,MCF.MC_FLT,STF.ST_FLT,
				SVF.SV_FLT,TCF.TC_FLT,IPF.IP_FLT,BBF.BB_FLT,PRF.PR_FLT,PTF.PT_FLT,PPF.PP_FLT,SWF.SW_FLT,
				RTF.RT_FLT,FWF.FW_FLT,BMF.BM_FLT,SCF.SC_FLT
				FROM
				(
					SELECT COUNT(*) AS DT_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-DT-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS DTF,
				(
					SELECT COUNT(*) AS LT_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-LT-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS LTF,
				(
					SELECT COUNT(*) AS MN_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-MN-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MNF,
				(
					SELECT COUNT(*) AS MC_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-MS-00-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MCF,
				(
					SELECT COUNT(*) AS SC_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SC-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SCF,
				(
					SELECT COUNT(*) AS ST_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-ST-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS STF,
				(
					SELECT COUNT(*) AS SV_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SV-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SVF,
				(
					SELECT COUNT(*) AS TC_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-TC-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS TCF,
				(
					SELECT COUNT(*) AS IP_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-AV-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS IPF,
				(
					SELECT COUNT(*) AS BB_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BB-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BBF,
				(
					SELECT COUNT(*) AS PR_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PR-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PRF,
				(
					SELECT COUNT(*) AS PT_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PT-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PTF,
				(
					SELECT COUNT(*) AS PP_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-LP-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PPF,
				(
					SELECT COUNT(*) AS SW_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-SW-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SWF,
				(
					SELECT COUNT(*) AS RT_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-RT-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS RTF,
				(
					SELECT COUNT(*) AS FW_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-FW-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS FWF,
				(
					SELECT COUNT(*) AS BM_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BM-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BMF
			END
		ELSE IF @TYPE = 'SCRAPPED'
			BEGIN
				SELECT DTS.DT_SCRP,LTS.LT_SCRP,MNS.MN_SCRP,MCS.MC_SCRP,STS.ST_SCRP,
				SVS.SV_SCRP,TCS.TC_SCRP,IPS.IP_SCRP,BBS.BB_SCRP,PRS.PR_SCRP,PTS.PT_SCRP,
				PPS.PP_SCRP,SWS.SW_SCRP,RTS.RT_SCRP,FWS.FW_SCRP,BMS.BM_SCRP,SCS.SC_SCRP
				FROM
				(
					SELECT COUNT(*) AS DT_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-DT-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS DTS,
				(
					SELECT COUNT(*) AS LT_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-LT-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS LTS,
				(
					SELECT COUNT(*) AS MN_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-MN-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MNS,
				(
					SELECT COUNT(*) AS MC_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-MS-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MCS,
				(
					SELECT COUNT(*) AS SC_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SC-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SCS,
				(
					SELECT COUNT(*) AS ST_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-ST-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS STS,
				(
					SELECT COUNT(*) AS SV_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SV-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SVS,
				(
					SELECT COUNT(*) AS TC_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-TC-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS TCS,
				(
					SELECT COUNT(*) AS IP_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-AV-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS IPS,
				(
					SELECT COUNT(*) AS BB_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BB-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BBS,
				(
					SELECT COUNT(*) AS PR_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PR-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PRS,
				(
					SELECT COUNT(*) AS PT_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PT-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PTS,
				(
					SELECT COUNT(*) AS PP_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-LP-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PPS,
				(
					SELECT COUNT(*) AS SW_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-SW-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SWS,
				(
					SELECT COUNT(*) AS RT_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-RT-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS RTS,
				(
					SELECT COUNT(*) AS FW_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-FW-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS FWS,
				(
					SELECT COUNT(*) AS BM_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BM-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BMS
			END
		ELSE IF @TYPE = 'SOLD'
			BEGIN
				SELECT DTSD.DT_SOLD,LTSD.LT_SOLD,MNSD.MN_SOLD,MCSD.MC_SOLD,STSD.ST_SOLD,
				SVSD.SV_SOLD,TCSD.TC_SOLD,IPSD.IP_SOLD,BBSD.BB_SOLD,PJSD.PR_SOLD,PRSD.PT_SOLD,
				PPSD.PP_SOLD,SWSD.SW_SOLD,RTSD.RT_SOLD,FWSD.FW_SOLD,BMSD.BM_SOLD,SCSD.SC_SOLD
				FROM
				(
					SELECT COUNT(*) AS DT_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-DT-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS DTSD,
				(
					SELECT COUNT(*) AS LT_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-LT-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS LTSD,
				(
					SELECT COUNT(*) AS MN_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-MN-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MNSD,
				(
					SELECT COUNT(*) AS MC_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-MS-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MCSD,
				(
					SELECT COUNT(*) AS SC_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SC-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SCSD,
				(
					SELECT COUNT(*) AS ST_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-ST-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS STSD,
				(
					SELECT COUNT(*) AS SV_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SV-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SVSD,
				(
					SELECT COUNT(*) AS TC_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-TC-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS TCSD,
				(
					SELECT COUNT(*) AS IP_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-AV-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS IPSD,
				(
					SELECT COUNT(*) AS BB_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BB-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BBSD,
				(
					SELECT COUNT(*) AS PR_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PR-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PJSD,
				(
					SELECT COUNT(*) AS PT_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PT-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PRSD,
				(
					SELECT COUNT(*) AS PP_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-LP-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PPSD,
				(
					SELECT COUNT(*) AS SW_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-SW-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SWSD,
				(
					SELECT COUNT(*) AS RT_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-RT-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS RTSD,
				(
					SELECT COUNT(*) AS FW_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-FW-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS FWSD,
				(
					SELECT COUNT(*) AS BM_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BM-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BMSD
			END		
    SET NOCOUNT OFF;
END









GO
/****** Object:  StoredProcedure [dbo].[sp_ReportAssetDashBoard_old]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================================
-- Author	  :	Bar Code India Ltd.
-- ALTER date: 10th October, 2012
-- Description:	The query returns asset dashboard details for each category.
-- Modify date: 12th October, 2012
-- =========================================================================
--IT-DT-00-00
--IT-LP-00-00
--IT-NT-00-00
--IT-NT-SW-00
--IT-PR-00-00
--IT-SR-00-00
--IT-UP-00-00
CREATE PROCEDURE [dbo].[sp_ReportAssetDashBoard_old]
	@ASSET_LOCATION NVARCHAR(50),
	@COMPANY_CODE NVARCHAR(50),
	@TYPE NVARCHAR(50)
AS
BEGIN	
	SET NOCOUNT ON;
		IF @TYPE = 'PRODUCTION'
			BEGIN
				SELECT DP.DT_PROD,LP.LT_PROD,MP.MN_PROD,MC.MC_PROD,SP.ST_PROD,
				SVP.SV_PROD,TCLP.TC_PROD,IPP.IP_PROD,BBP.BB_PROD,PJP.PR_PROD,PRP.PT_PROD,PPP.PP_PROD,SWP.SW_PROD,
				RTP.RT_PROD,FWP.FW_PROD,BMP.BM_PROD,SC.SC_PROD
				FROM
				(	-- Desktop
					SELECT COUNT(*) AS DT_PROD FROM [ASSET_ACQUISITION]
					WHERE [CATEGORY_CODE]='IT-DT-00-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS DP,
				(	-- Laptop
					SELECT COUNT(*) AS LT_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-LP-00-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS LP,
				(	-- Monitor
					SELECT COUNT(*) AS MN_PROD FROM [ASSET_ACQUISITION]
					WHERE [CATEGORY_CODE]='IT-CO-MN-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MP,
				(	-- Miscellaneous
					SELECT COUNT(*) AS MC_PROD FROM [ASSET_ACQUISITION]
					WHERE [CATEGORY_CODE]='IT-MS-00-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MC,
				(
					-- Scanner
					SELECT COUNT(*) AS SC_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SC-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SC,
				(	-- Storage
					SELECT COUNT(*) AS ST_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-ST-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SP,
				(	-- Server
					SELECT COUNT(*) AS SV_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-SR-00-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SVP,
				(	-- Thin Client
					SELECT COUNT(*) AS TC_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-TC-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS TCLP,
				(	-- IP/Avaya Phone
					SELECT COUNT(*) AS IP_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-AV-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS IPP,
				(	-- Blackberry
					SELECT COUNT(*) AS BB_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BB-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BBP,
				(	-- Projector
					SELECT COUNT(*) AS PR_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PR-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PJP,
				(	-- Printer
					SELECT COUNT(*) AS PT_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-PR-00-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PRP,
				(	-- PSTN Phone
					SELECT COUNT(*) AS PP_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-LP-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PPP,
				(	-- Switch
					SELECT COUNT(*) AS SW_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NT-SW-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SWP,
				(	-- Router
					SELECT COUNT(*) AS RT_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-RT-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS RTP,
				(	-- Firewall
					SELECT COUNT(*) AS FW_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-FW-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS FWP,
				(	-- Biometrics
					SELECT COUNT(*) AS BM_PROD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BM-00' AND [ASSET_PROCESS] NOT IN ('STOCK','FAULTY')
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BMP
			END
		ELSE IF @TYPE = 'STOCK'
			BEGIN
				SELECT DS.DT_STK,LS.LT_STK,MS.MN_STK,MC.MC_STK,SS.ST_STK,
				SVS.SV_STK,TCLS.TC_STK,IPS.IP_STK,BBS.BB_STK,PJS.PR_STK,PRS.PT_STK,PPS.PP_STK,SWS.SW_STK,
				RTS.RT_STK,FWS.FW_STK,BMS.BM_STK,SC.SC_STK
				FROM
				(
					SELECT COUNT(*) AS DT_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-DT-00-00' AND [ASSET_PROCESS] = 'STOCK'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS DS,
				(
					SELECT COUNT(*) AS LT_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-LP-00-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS LS,
				(
					SELECT COUNT(*) AS MN_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-MN-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MS,
				(
					SELECT COUNT(*) AS MC_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-MS-00-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MC,
				(
					SELECT COUNT(*) AS SC_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SC-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SC,
				(
					SELECT COUNT(*) AS ST_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-ST-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SS,
				(
					SELECT COUNT(*) AS SV_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-SR-00-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SVS,
				(
					SELECT COUNT(*) AS TC_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-TC-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS TCLS,
				(
					SELECT COUNT(*) AS IP_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-AV-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS IPS,
				(
					SELECT COUNT(*) AS BB_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BB-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BBS,
				(
					SELECT COUNT(*) AS PR_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PR-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PJS,
				(
					SELECT COUNT(*) AS PT_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-PR-00-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PRS,
				(
					SELECT COUNT(*) AS PP_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-LP-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PPS,
				(
					SELECT COUNT(*) AS SW_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NT-SW-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SWS,
				(
					SELECT COUNT(*) AS RT_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-RT-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS RTS,
				(
					SELECT COUNT(*) AS FW_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-FW-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS FWS,
				(
					SELECT COUNT(*) AS BM_STK FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BM-00' AND [ASSET_PROCESS] = 'ST'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BMS
			END
		ELSE IF @TYPE = 'FAULTY'
			BEGIN
				SELECT DTF.DT_FLT,LTF.LT_FLT,MNF.MN_FLT,MCF.MC_FLT,STF.ST_FLT,
				SVF.SV_FLT,TCF.TC_FLT,IPF.IP_FLT,BBF.BB_FLT,PRF.PR_FLT,PTF.PT_FLT,PPF.PP_FLT,SWF.SW_FLT,
				RTF.RT_FLT,FWF.FW_FLT,BMF.BM_FLT,SCF.SC_FLT
				FROM
				(
					SELECT COUNT(*) AS DT_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-DT-00-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS DTF,
				(
					SELECT COUNT(*) AS LT_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-LP-00-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS LTF,
				(
					SELECT COUNT(*) AS MN_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-MN-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MNF,
				(
					SELECT COUNT(*) AS MC_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-MS-00-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MCF,
				(
					SELECT COUNT(*) AS SC_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SC-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SCF,
				(
					SELECT COUNT(*) AS ST_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-ST-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS STF,
				(
					SELECT COUNT(*) AS SV_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-SR-00-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SVF,
				(
					SELECT COUNT(*) AS TC_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-TC-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS TCF,
				(
					SELECT COUNT(*) AS IP_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-AV-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS IPF,
				(
					SELECT COUNT(*) AS BB_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BB-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BBF,
				(
					SELECT COUNT(*) AS PR_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PR-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PRF,
				(
					SELECT COUNT(*) AS PT_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-PR-00-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PTF,
				(
					SELECT COUNT(*) AS PP_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-LP-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PPF,
				(
					SELECT COUNT(*) AS SW_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NT-SW-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SWF,
				(
					SELECT COUNT(*) AS RT_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-RT-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS RTF,
				(
					SELECT COUNT(*) AS FW_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-FW-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS FWF,
				(
					SELECT COUNT(*) AS BM_FLT FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BM-00' AND [ASSET_PROCESS] = 'FAULTY'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BMF
			END
		ELSE IF @TYPE = 'SCRAPPED'
			BEGIN
				SELECT DTS.DT_SCRP,LTS.LT_SCRP,MNS.MN_SCRP,MCS.MC_SCRP,STS.ST_SCRP,
				SVS.SV_SCRP,TCS.TC_SCRP,IPS.IP_SCRP,BBS.BB_SCRP,PRS.PR_SCRP,PTS.PT_SCRP,
				PPS.PP_SCRP,SWS.SW_SCRP,RTS.RT_SCRP,FWS.FW_SCRP,BMS.BM_SCRP,SCS.SC_SCRP
				FROM
				(
					SELECT COUNT(*) AS DT_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-DT-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS DTS,
				(
					SELECT COUNT(*) AS LT_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-LP-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS LTS,
				(
					SELECT COUNT(*) AS MN_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-MN-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MNS,
				(
					SELECT COUNT(*) AS MC_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-MS-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MCS,
				(
					SELECT COUNT(*) AS SC_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SC-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [SOLD_SCRAPPED_STATUS] IS NULL AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SCS,
				(
					SELECT COUNT(*) AS ST_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-ST-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS STS,
				(
					SELECT COUNT(*) AS SV_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-SR-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SVS,
				(
					SELECT COUNT(*) AS TC_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-TC-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS TCS,
				(
					SELECT COUNT(*) AS IP_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-AV-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS IPS,
				(
					SELECT COUNT(*) AS BB_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BB-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BBS,
				(
					SELECT COUNT(*) AS PR_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PR-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PRS,
				(
					SELECT COUNT(*) AS PT_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-PR-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PTS,
				(
					SELECT COUNT(*) AS PP_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-LP-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PPS,
				(
					SELECT COUNT(*) AS SW_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NT-SW-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SWS,
				(
					SELECT COUNT(*) AS RT_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-RT-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS RTS,
				(
					SELECT COUNT(*) AS FW_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-FW-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS FWS,
				(
					SELECT COUNT(*) AS BM_SCRP FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BM-00' AND [SOLD_SCRAPPED_STATUS] = 'SCRAPPED'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BMS
			END
		ELSE IF @TYPE = 'SOLD'
			BEGIN
				SELECT DTSD.DT_SOLD,LTSD.LT_SOLD,MNSD.MN_SOLD,MCSD.MC_SOLD,STSD.ST_SOLD,
				SVSD.SV_SOLD,TCSD.TC_SOLD,IPSD.IP_SOLD,BBSD.BB_SOLD,PJSD.PR_SOLD,PRSD.PT_SOLD,
				PPSD.PP_SOLD,SWSD.SW_SOLD,RTSD.RT_SOLD,FWSD.FW_SOLD,BMSD.BM_SOLD,SCSD.SC_SOLD
				FROM
				(
					SELECT COUNT(*) AS DT_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-DT-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS DTSD,
				(
					SELECT COUNT(*) AS LT_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-LP-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS LTSD,
				(
					SELECT COUNT(*) AS MN_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-MN-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MNSD,
				(
					SELECT COUNT(*) AS MC_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-MS-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS MCSD,
				(
					SELECT COUNT(*) AS SC_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-SC-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SCSD,
				(
					SELECT COUNT(*) AS ST_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-ST-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS STSD,
				(
					SELECT COUNT(*) AS SV_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-SR-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SVSD,
				(
					SELECT COUNT(*) AS TC_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-CO-TC-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS TCSD,
				(
					SELECT COUNT(*) AS IP_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-AV-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS IPSD,
				(
					SELECT COUNT(*) AS BB_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BB-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BBSD,
				(
					SELECT COUNT(*) AS PR_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-PR-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PJSD,
				(
					SELECT COUNT(*) AS PT_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-PR-00-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PRSD,
				(
					SELECT COUNT(*) AS PP_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-LP-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS PPSD,
				(
					SELECT COUNT(*) AS SW_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NT-SW-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS SWSD,
				(
					SELECT COUNT(*) AS RT_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-RT-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS RTSD,
				(
					SELECT COUNT(*) AS FW_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-NW-FW-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS FWSD,
				(
					SELECT COUNT(*) AS BM_SOLD FROM [ASSET_ACQUISITION] 
					WHERE [CATEGORY_CODE]='IT-OE-BM-00' AND [SOLD_SCRAPPED_STATUS] = 'SOLD'
					AND [ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' AND [COMP_CODE] LIKE @COMPANY_CODE + '%'
				) AS BMSD
			END		
    SET NOCOUNT OFF;
END
​







GO
/****** Object:  StoredProcedure [dbo].[sp_ReportAssetHistory]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author	  :	Bar Code India Ltd.
-- ALTER date: 6th October, 2012
-- Description:	The procedure gets asset health and history report.
-- =============================================
CREATE PROCEDURE [dbo].[sp_ReportAssetHistory]
	@CATEGORY_CODE NVARCHAR(50),
	@ASSET_LOCATION NVARCHAR(50),
	@ASSET_MAKE NVARCHAR(50),
	@MODEL_NAME NVARCHAR(50),
	@AMC_WARRANTY NVARCHAR(50),
	@FROM_PURCHASE_DATE NVARCHAR(50),
	@TO_PURCHASE_DATE NVARCHAR(50),
	@ASSET_TYPE NVARCHAR(50),
	@AGE_TYPE NVARCHAR(50),
	@NO_OF_YEARS_OLD INT
AS
BEGIN	
	SET NOCOUNT ON;
		IF @AGE_TYPE = 'YEAR'
			BEGIN
				SELECT AA.[ASSET_CODE],AA.[ASSET_ID],AA.[SERIAL_CODE],AA.[ASSET_MAKE],AA.[MODEL_NAME],
				CONVERT(VARCHAR,NULLIF(AA.[PURCHASED_DATE],''),105) AS PURCHASED_DATE,AA.[AMC_WARRANTY],
				CONVERT(VARCHAR,NULLIF(AA.[AMC_WARRANTY_START_DATE],''),105) AS AMC_WARRANTY_START_DATE,
				CONVERT(VARCHAR,NULLIF(AA.[AMC_WARRANTY_END_DATE],''),105) AS AMC_WARRANTY_END_DATE,
				PM.[PROCESS_NAME],DM.[DEPT_NAME],LM.[LOC_NAME],DATEDIFF(YY,NULLIF(AA.[PURCHASED_DATE],''),GETDATE()) AS NO_OF_YRS_OLD
				FROM [ASSET_ACQUISITION] AA 
				INNER JOIN [PROCESS_MASTER] PM ON AA.[ASSET_PROCESS] = PM.[PROCESS_CODE]
				INNER JOIN [DEPARTMENT_MASTER] DM ON AA.[DEPARTMENT] = DM.[DEPT_CODE]
				INNER JOIN [LOCATION_MASTER] LM ON AA.[ASSET_LOCATION] = LM.[LOC_CODE]
				WHERE AA.[COMP_CODE] = PM.[COMP_CODE] AND AA.[COMP_CODE] = DM.[COMP_CODE] AND AA.[COMP_CODE] = LM.[COMP_CODE]
				AND AA.[ASSET_TYPE] = @ASSET_TYPE  AND AA.[AMC_WARRANTY] LIKE @AMC_WARRANTY + '%'
				AND AA.[ASSET_MAKE] LIKE @ASSET_MAKE  + '%' AND AA.[MODEL_NAME] LIKE @MODEL_NAME  + '%'
				AND AA.[CATEGORY_CODE] LIKE @CATEGORY_CODE  + '%' AND AA.[ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' 
				AND AA.[PURCHASED_DATE] >= @FROM_PURCHASE_DATE AND AA.[PURCHASED_DATE] <= @TO_PURCHASE_DATE
				AND DATEDIFF(YY,NULLIF(AA.[PURCHASED_DATE],''),GETDATE()) >= @NO_OF_YEARS_OLD
				ORDER BY NO_OF_YRS_OLD
			END
		ELSE IF @AGE_TYPE = 'MONTH'
			BEGIN
				SELECT AA.[ASSET_CODE],AA.[ASSET_ID],AA.[SERIAL_CODE],AA.[ASSET_MAKE],AA.[MODEL_NAME],
				CONVERT(VARCHAR,NULLIF(AA.[PURCHASED_DATE],''),105) AS PURCHASED_DATE,AA.[AMC_WARRANTY],
				CONVERT(VARCHAR,NULLIF(AA.[AMC_WARRANTY_START_DATE],''),105) AS AMC_WARRANTY_START_DATE,
				CONVERT(VARCHAR,NULLIF(AA.[AMC_WARRANTY_END_DATE],''),105) AS AMC_WARRANTY_END_DATE,
				PM.[PROCESS_NAME],DM.[DEPT_NAME],LM.[LOC_NAME],DATEDIFF(MM,NULLIF(AA.[PURCHASED_DATE],''),GETDATE()) AS NO_OF_YRS_OLD
				FROM [ASSET_ACQUISITION] AA 
				INNER JOIN [PROCESS_MASTER] PM ON AA.[ASSET_PROCESS] = PM.[PROCESS_CODE]
				INNER JOIN [DEPARTMENT_MASTER] DM ON AA.[DEPARTMENT] = DM.[DEPT_CODE]
				INNER JOIN [LOCATION_MASTER] LM ON AA.[ASSET_LOCATION] = LM.[LOC_CODE]
				WHERE AA.[COMP_CODE] = PM.[COMP_CODE] AND AA.[COMP_CODE] = DM.[COMP_CODE] AND AA.[COMP_CODE] = LM.[COMP_CODE]
				AND AA.[ASSET_TYPE] = @ASSET_TYPE  AND AA.[AMC_WARRANTY] LIKE @AMC_WARRANTY + '%'
				AND AA.[ASSET_MAKE] LIKE @ASSET_MAKE  + '%' AND AA.[MODEL_NAME] LIKE @MODEL_NAME  + '%'
				AND AA.[CATEGORY_CODE] LIKE @CATEGORY_CODE  + '%' AND AA.[ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' 
				AND AA.[PURCHASED_DATE] >= @FROM_PURCHASE_DATE AND AA.[PURCHASED_DATE] <= @TO_PURCHASE_DATE
				AND DATEDIFF(MM,NULLIF(AA.[PURCHASED_DATE],''),GETDATE()) >= @NO_OF_YEARS_OLD
				ORDER BY NO_OF_YRS_OLD
			END
		ELSE IF @AGE_TYPE = 'DAY'
			BEGIN
				SELECT AA.[ASSET_CODE],AA.[ASSET_ID],AA.[SERIAL_CODE],AA.[ASSET_MAKE],AA.[MODEL_NAME],
				CONVERT(VARCHAR,NULLIF(AA.[PURCHASED_DATE],''),105) AS PURCHASED_DATE,AA.[AMC_WARRANTY],
				CONVERT(VARCHAR,NULLIF(AA.[AMC_WARRANTY_START_DATE],''),105) AS AMC_WARRANTY_START_DATE,
				CONVERT(VARCHAR,NULLIF(AA.[AMC_WARRANTY_END_DATE],''),105) AS AMC_WARRANTY_END_DATE,
				PM.[PROCESS_NAME],DM.[DEPT_NAME],LM.[LOC_NAME],DATEDIFF(DD,NULLIF(AA.[PURCHASED_DATE],''),GETDATE()) AS NO_OF_YRS_OLD
				FROM [ASSET_ACQUISITION] AA 
				INNER JOIN [PROCESS_MASTER] PM ON AA.[ASSET_PROCESS] = PM.[PROCESS_CODE]
				INNER JOIN [DEPARTMENT_MASTER] DM ON AA.[DEPARTMENT] = DM.[DEPT_CODE]
				INNER JOIN [LOCATION_MASTER] LM ON AA.[ASSET_LOCATION] = LM.[LOC_CODE]
				WHERE AA.[COMP_CODE] = PM.[COMP_CODE] AND AA.[COMP_CODE] = DM.[COMP_CODE] AND AA.[COMP_CODE] = LM.[COMP_CODE]
				AND AA.[ASSET_TYPE] = @ASSET_TYPE  AND AA.[AMC_WARRANTY] LIKE @AMC_WARRANTY + '%'
				AND AA.[ASSET_MAKE] LIKE @ASSET_MAKE  + '%' AND AA.[MODEL_NAME] LIKE @MODEL_NAME  + '%'
				AND AA.[CATEGORY_CODE] LIKE @CATEGORY_CODE  + '%' AND AA.[ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' 
				AND AA.[PURCHASED_DATE] >= @FROM_PURCHASE_DATE AND AA.[PURCHASED_DATE] <= @TO_PURCHASE_DATE
				AND DATEDIFF(DD,NULLIF(AA.[PURCHASED_DATE],''),GETDATE()) >= @NO_OF_YEARS_OLD
				ORDER BY NO_OF_YRS_OLD
			END			
		ELSE
			BEGIN
				SELECT AA.[ASSET_CODE],AA.[ASSET_ID],AA.[SERIAL_CODE],AA.[ASSET_MAKE],AA.[MODEL_NAME],
				CONVERT(VARCHAR,NULLIF(AA.[PURCHASED_DATE],''),105) AS PURCHASED_DATE,AA.[AMC_WARRANTY],
				CONVERT(VARCHAR,NULLIF(AA.[AMC_WARRANTY_START_DATE],''),105) AS AMC_WARRANTY_START_DATE,
				CONVERT(VARCHAR,NULLIF(AA.[AMC_WARRANTY_END_DATE],''),105) AS AMC_WARRANTY_END_DATE,
				PM.[PROCESS_NAME],DM.[DEPT_NAME],LM.[LOC_NAME],DATEDIFF(YY,NULLIF(AA.[PURCHASED_DATE],''),GETDATE()) AS NO_OF_YRS_OLD
				FROM [ASSET_ACQUISITION] AA 
				INNER JOIN [PROCESS_MASTER] PM ON AA.[ASSET_PROCESS] = PM.[PROCESS_CODE]
				INNER JOIN [DEPARTMENT_MASTER] DM ON AA.[DEPARTMENT] = DM.[DEPT_CODE]
				INNER JOIN [LOCATION_MASTER] LM ON AA.[ASSET_LOCATION] = LM.[LOC_CODE]
				WHERE AA.[COMP_CODE] = PM.[COMP_CODE] AND AA.[COMP_CODE] = DM.[COMP_CODE] AND AA.[COMP_CODE] = LM.[COMP_CODE]
				AND AA.[ASSET_TYPE] = @ASSET_TYPE  AND AA.[AMC_WARRANTY] LIKE @AMC_WARRANTY + '%'
				AND AA.[ASSET_MAKE] LIKE @ASSET_MAKE  + '%' AND AA.[MODEL_NAME] LIKE @MODEL_NAME  + '%'
				AND AA.[CATEGORY_CODE] LIKE @CATEGORY_CODE  + '%' AND AA.[ASSET_LOCATION] LIKE @ASSET_LOCATION + '%' 
				AND AA.[PURCHASED_DATE] >= @FROM_PURCHASE_DATE AND AA.[PURCHASED_DATE] <= @TO_PURCHASE_DATE
				AND DATEDIFF(YY,AA.[PURCHASED_DATE],GETDATE()) >= @NO_OF_YEARS_OLD
				ORDER BY NO_OF_YRS_OLD
			END
    SET NOCOUNT OFF;
END









GO
/****** Object:  StoredProcedure [dbo].[sp_ReportAssetTracking]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Neeraj Saxena
-- ALTER date: July 05, 2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_ReportAssetTracking] 
	@ASSET_CODE nvarchar(50),
	@SERIAL_CODE nvarchar(50),
	@ASSET_TYPE nvarchar(50),
	@CATEGORY_CODE nvarchar(50),
	@LOCATION_CODE nvarchar(50),
	@COMP_CODE nvarchar(50)
AS
BEGIN
	SELECT dbo.ASSET_ACQUISITION.ASSET_CODE, dbo.ASSET_ACQUISITION.SERIAL_CODE, dbo.ASSET_ACQUISITION.ASSET_MAKE, 
	dbo.ASSET_ACQUISITION.MODEL_NAME, dbo.ASSET_ACQUISITION.ASSET_TYPE, dbo.CATEGORY_MASTER.CATEGORY_NAME, 
	dbo.LOCATION_MASTER.LOC_NAME, dbo.COMPANY_MASTER.COMP_NAME, dbo.VENDOR_MASTER.VENDOR_NAME, 
	CONVERT(VARCHAR,NULLIF(dbo.ASSET_ACQUISITION.INSTALLED_DATE,''), 105) AS INSTALLED_DATE, CONVERT(VARCHAR, NULLIF(dbo.ASSET_ACQUISITION.PURCHASED_DATE,''), 105) 
	AS PURCHASED_DATE, dbo.ASSET_ACQUISITION.PURCHASED_AMT, dbo.ASSET_ACQUISITION.PO_NUMBER, CONVERT(VARCHAR, 
	NULLIF(dbo.ASSET_ACQUISITION.PO_DATE,''), 105) AS PO_DATE, dbo.ASSET_ACQUISITION.INVOICE_NO, dbo.ASSET_ACQUISITION.ASSET_ALLOCATED, 
	dbo.ASSET_ACQUISITION.CATEGORY_CODE, dbo.ASSET_ACQUISITION.ASSET_LOCATION
	FROM dbo.ASSET_ACQUISITION INNER JOIN
	dbo.CATEGORY_MASTER ON dbo.ASSET_ACQUISITION.CATEGORY_CODE = dbo.CATEGORY_MASTER.CATEGORY_CODE INNER JOIN
	dbo.LOCATION_MASTER ON dbo.ASSET_ACQUISITION.ASSET_LOCATION = dbo.LOCATION_MASTER.LOC_CODE LEFT JOIN
	dbo.VENDOR_MASTER ON dbo.ASSET_ACQUISITION.VENDOR_CODE = dbo.VENDOR_MASTER.VENDOR_CODE INNER JOIN
	dbo.COMPANY_MASTER ON dbo.ASSET_ACQUISITION.COMP_CODE = dbo.COMPANY_MASTER.COMP_CODE
	WHERE dbo.ASSET_ACQUISITION.ASSET_CODE LIKE @ASSET_CODE + '%' 
	AND dbo.ASSET_ACQUISITION.SERIAL_CODE LIKE @SERIAL_CODE + '%'
	AND dbo.ASSET_ACQUISITION.ASSET_TYPE LIKE @ASSET_TYPE + '%' 
	AND dbo.ASSET_ACQUISITION.CATEGORY_CODE LIKE @CATEGORY_CODE + '%' 
	AND dbo.ASSET_ACQUISITION.ASSET_LOCATION LIKE @LOCATION_CODE + '%'
	AND dbo.ASSET_ACQUISITION.COMP_CODE = @COMP_CODE AND dbo.ASSET_ACQUISITION.ASSET_APPROVED='True'
END









GO
/****** Object:  StoredProcedure [dbo].[sp_ReportStockAsOn]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author		:	Neeraj Saxena
-- ALTER date	:	July 05,2012
-- Description	:	Asset stock report.
-- =============================================
CREATE PROCEDURE [dbo].[sp_ReportStockAsOn]
	@ASSET_TYPE nvarchar(50),
	@CATEGORY_CODE nvarchar(50),
	@LOCATION_CODE nvarchar(50),
	@COMP_CODE nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT COUNT(A.ASSET_CODE) AS TOTAL,A.ASSET_TYPE,A.CATEGORY_NAME,A.ASSET_ID,A.SERIAL_CODE,A.LOC_NAME,A.ASSET_MAKE,A.MODEL_NAME,A.COMP_CODE FROM
	(SELECT dbo.ASSET_ACQUISITION.ASSET_CODE, dbo.ASSET_ACQUISITION.ASSET_ID, dbo.ASSET_ACQUISITION.SERIAL_CODE, dbo.ASSET_ACQUISITION.ASSET_MAKE, 
	dbo.ASSET_ACQUISITION.MODEL_NAME, dbo.ASSET_ACQUISITION.ASSET_TYPE,dbo.ASSET_ACQUISITION.COMP_CODE, dbo.CATEGORY_MASTER.CATEGORY_NAME, 
	dbo.LOCATION_MASTER.LOC_NAME, dbo.COMPANY_MASTER.COMP_NAME, dbo.VENDOR_MASTER.VENDOR_NAME, CONVERT(VARCHAR, 
	NULLIF(dbo.ASSET_ACQUISITION.INSTALLED_DATE,''), 105) AS INSTALLED_DATE, CONVERT(VARCHAR, NULLIF(dbo.ASSET_ACQUISITION.PURCHASED_DATE,''), 105) 
	AS PURCHASED_DATE, dbo.ASSET_ACQUISITION.PURCHASED_AMT, dbo.ASSET_ACQUISITION.PO_NUMBER, CONVERT(VARCHAR, 
	dbo.ASSET_ACQUISITION.PO_DATE, 105) AS PO_DATE, dbo.ASSET_ACQUISITION.INVOICE_NO, dbo.ASSET_ACQUISITION.ASSET_ALLOCATED, 
	dbo.ASSET_ACQUISITION.CATEGORY_CODE, dbo.ASSET_ACQUISITION.ASSET_LOCATION,dbo.ASSET_ACQUISITION.ASSET_APPROVED FROM dbo.ASSET_ACQUISITION INNER JOIN
	dbo.CATEGORY_MASTER ON dbo.ASSET_ACQUISITION.CATEGORY_CODE = dbo.CATEGORY_MASTER.CATEGORY_CODE INNER JOIN
	dbo.LOCATION_MASTER ON dbo.ASSET_ACQUISITION.ASSET_LOCATION = dbo.LOCATION_MASTER.LOC_CODE LEFT JOIN
	dbo.VENDOR_MASTER ON dbo.ASSET_ACQUISITION.VENDOR_CODE = dbo.VENDOR_MASTER.VENDOR_CODE INNER JOIN
	dbo.COMPANY_MASTER ON dbo.ASSET_ACQUISITION.COMP_CODE = dbo.COMPANY_MASTER.COMP_CODE) A
	WHERE A.ASSET_TYPE LIKE @ASSET_TYPE + '%' AND A.CATEGORY_CODE LIKE @CATEGORY_CODE + '%' AND A.ASSET_LOCATION LIKE @LOCATION_CODE + '%' AND A.COMP_CODE = @COMP_CODE
	AND A.ASSET_APPROVED = 'True'
	GROUP BY A.ASSET_TYPE,A.CATEGORY_NAME,A.ASSET_ID,A.SERIAL_CODE,A.LOC_NAME,A.LOC_NAME,A.ASSET_MAKE,A.MODEL_NAME,A.COMP_CODE,A.ASSET_APPROVED

	SET NOCOUNT OFF;
END









GO
/****** Object:  StoredProcedure [dbo].[sp_SendAMCAlert]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SendAMCAlert]
	@Mail_Recipient nvarchar(50),
	@Msg_Subject nvarchar(100),
	@MsgBody nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	EXEC msdb.dbo.sp_send_dbmail
	@profile_name = 'Win_ATS_Mail',
	@recipients = @Mail_Recipient,
	@subject = @Msg_Subject,
	@body = @MsgBody
	
END









GO
/****** Object:  StoredProcedure [dbo].[sp_StorageLocationMaster]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_StorageLocationMaster]	



	@TYPE nvarchar(50)=NULL,



	@UNIQUE_ADDRS_ID nvarchar(50)=NULL,



	@STORAGE_LOC_CODE nvarchar(50)=NULL,	
	
	@SAP_LOC_CODE nvarchar(50)=null,


	@STORAGE_LOC_NAME nvarchar(50)=NULL,



	@CMF_GROUP_EMAIL NVARCHAR(50)=NULL,	



	@GSG_GROUP_EMAIL NVARCHAR(50)=NULL,	



	@REMARKS NVARCHAR(100)=NULL,



	@ACTIVE bit=NULL,



	@CREATED_BY nvarchar(50)=NULL,



	@MODIFIED_BY nvarchar(50)=NULL,	
	@COMP_CODE varchar(50)=null


	



	



AS



BEGIN		



		IF @TYPE = 'SAVELOCATION'



			BEGIN



				INSERT INTO STORAGE_LOCATION_MASTER (STORAGE_LOC_CODE,SAP_LOC_CODE,STORAGE_LOC_NAME,CMF_GROUP_EMAIL,GSG_GROUP_EMAIL,REMARKS,ACTIVE,CREATED_ON,CREATED_BY)



                VALUES (@STORAGE_LOC_CODE,@SAP_LOC_CODE,@STORAGE_LOC_NAME,@CMF_GROUP_EMAIL,@GSG_GROUP_EMAIL,@REMARKS,@ACTIVE,GETDATE(),@CREATED_BY)					



			END



		IF @TYPE = 'UPDATELOCATION'



			BEGIN					



				UPDATE STORAGE_LOCATION_MASTER SET STORAGE_LOC_NAME=@STORAGE_LOC_NAME,CMF_GROUP_EMAIL=@CMF_GROUP_EMAIL,



				GSG_GROUP_EMAIL=@GSG_GROUP_EMAIL,ACTIVE=@ACTIVE,REMARKS=@REMARKS,MODIFIED_BY=@MODIFIED_BY , MODIFIED_ON = GETDATE()



				WHERE STORAGE_LOC_CODE=@STORAGE_LOC_CODE					



			END			



		IF @TYPE = 'GETLOCATIONDETAILS'



			BEGIN



				SELECT STORAGE_LOC_CODE, SAP_LOC_CODE,STORAGE_LOC_NAME,CMF_GROUP_EMAIL,GSG_GROUP_EMAIL,REMARKS,ACTIVE,CONVERT(VARCHAR,CREATED_ON,105) AS CREATED_ON,



				CREATED_BY FROM STORAGE_LOCATION_MASTER WHERE ACTIVE=1



			END



		IF @TYPE = 'DELETELOCATION'



			BEGIN



				DELETE FROM STORAGE_LOCATION_MASTER WHERE STORAGE_LOC_CODE=@STORAGE_LOC_CODE



			END	



		IF @TYPE = 'CHECKDUPLICATELOCATION'



			BEGIN



				SELECT * FROM STORAGE_LOCATION_MASTER WHERE STORAGE_LOC_CODE=@STORAGE_LOC_CODE



			END	

			IF @TYPE = 'CHECKDUPLICATESAPLOCATION'



			BEGIN



				--SELECT * FROM STORAGE_LOCATION_MASTER  WHERE SAP_LOC_CODE  =@SAP_LOC_CODE;

				SELECT DISTINCT SLM.STORAGE_LOC_CODE,SLM.STORAGE_LOC_NAME FROM COMPANY_MASTER CM INNER JOIN STORAGE_LOCATION_MASTER SLM ON
				SLM.STORAGE_LOC_CODE=CM.STORAGE_LOC_CODE WHERE CM.COMP_CODE=@COMP_CODE

			END	

		IF @TYPE = 'GETMAXUNIQUEID'



			BEGIN



				SELECT ISNULL(MAX(UNIQUE_ADDRESS_ID),0)+1 AS RSN FROM STORAGE_LOCATION_MASTER



				 WHERE  STORAGE_LOC_CODE=@STORAGE_LOC_CODE



			END	



			IF @TYPE = 'GETSTOREGELOCATION_NOTLOGGEDIN'



			BEGIN


		
		--		SELECT * FROM STORAGE_LOCATION_MASTER WHERE STORAGE_LOC_CODE != @STORAGE_LOC_CODE AND ACTIVE=1;


				SELECT DISTINCT SLM.STORAGE_LOC_CODE,SLM.STORAGE_LOC_NAME FROM COMPANY_MASTER CM INNER JOIN STORAGE_LOCATION_MASTER SLM ON
				SLM.STORAGE_LOC_CODE=CM.STORAGE_LOC_CODE WHERE CM.COMP_CODE=@COMP_CODE and slm.STORAGE_LOC_CODE != @STORAGE_LOC_CODE AND slm. ACTIVE=1


			END	



				



END




















GO
/****** Object:  StoredProcedure [dbo].[sp_SubProjectMaster]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Neeraj Saxena
-- ALTER date: July 05, 2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_SubProjectMaster]	
	@TYPE nvarchar(50)=NULL,
	@LOCATION_CODE NVARCHAR(100)=NULL,	
	@SUB_PROJECT_NAME NVARCHAR(100)=NULL,	
	@SUB_PROJECT_CODE nvarchar(50)=NULL,	
	@PROJECT_CODE nvarchar(50)=NULL,
	@PROJECT_MANAGER nvarchar(50)=NULL,
	@ASSIGN_EMPLOYEE nvarchar(50)=NULL,
	@REMARKS NVARCHAR(100)=NULL,
	@ACTIVE bit=NULL,
	@CREATED_BY nvarchar(50)=NULL,
	@MODIFIED_BY nvarchar(50)=NULL	
	
AS
BEGIN		
		IF @TYPE = 'SAVESUBPROJECT'
			BEGIN				
				INSERT INTO SUB_PROJECT_MASTER (SUB_PROJECT_CODE,SUB_PROJECT_NAME,PROJECT_CODE,PROJECT_MANAGER,LOCATION_CODE,ASSIGN_EMPLOYEE,
				REMARKS,ACTIVE,CREATED_ON,CREATED_BY) VALUES (@SUB_PROJECT_CODE,@SUB_PROJECT_NAME,@PROJECT_CODE,@PROJECT_MANAGER,@LOCATION_CODE,
				@ASSIGN_EMPLOYEE,@REMARKS,@ACTIVE,GETDATE(),@CREATED_BY)					
			END	
		IF @TYPE = 'UPDATESUBPROJECT'
			BEGIN				
				UPDATE SUB_PROJECT_MASTER SET PROJECT_MANAGER=@PROJECT_MANAGER,ASSIGN_EMPLOYEE=@ASSIGN_EMPLOYEE, ACTIVE=@ACTIVE,
				REMARKS=@REMARKS, MODIFIED_BY=@MODIFIED_BY , MODIFIED_ON = GETDATE() WHERE SUB_PROJECT_CODE=@SUB_PROJECT_CODE
			END			
		IF @TYPE = 'GETSUBPROJECTDETAILS'
			BEGIN
				--SELECT SUB_PROJECT_CODE,SUB_PROJECT_NAME,PROJECT_CODE,LOCATION_CODE,PROJECT_MANAGER,ASSIGN_EMPLOYEE,REMARKS,ACTIVE,
				--CONVERT(VARCHAR,CREATED_ON,105) AS CREATED_ON,CREATED_BY FROM SUB_PROJECT_MASTER WHERE LOCATION_CODE=@LOCATION_CODE AND ACTIVE=1
				SELECT SUB_PROJECT_CODE,SUB_PROJECT_NAME,PROJECT_CODE,LOCATION_CODE,PROJECT_MANAGER,ASSIGN_EMPLOYEE,REMARKS,ACTIVE,
				CONVERT(VARCHAR,CREATED_ON,105) AS CREATED_ON,CREATED_BY 
				FROM 
				SUB_PROJECT_MASTER WHERE LOCATION_CODE=@LOCATION_CODE AND ACTIVE=1

				UNION 
SELECT PROJECT_CODE as[SUB_PROJECT_CODE] , PROJECT_NAME ,PROJECT_CODE , LOCATION_CODE , PROJECT_MANAGER , '' as[ASSIGN_EMPLOYEE], REMARKS ,
ACTIVE,CONVERT(VARCHAR,CREATED_ON,105) AS CREATED_ON,CREATED_BY 
 FROM PROJECT_MASTER WHERE LOCATION_CODE=@LOCATION_CODE AND ACTIVE=1

			END
		IF @TYPE = 'DELETESUBPROJECT'
			BEGIN
				DELETE FROM SUB_PROJECT_MASTER WHERE SUB_PROJECT_CODE=@SUB_PROJECT_CODE AND LOCATION_CODE=@LOCATION_CODE 
			END	
		IF @TYPE = 'CHECKDUPLICATESUBPROJECT'
			BEGIN
				SELECT * FROM SUB_PROJECT_MASTER WHERE SUB_PROJECT_CODE=@SUB_PROJECT_CODE AND PROJECT_CODE=@PROJECT_CODE AND LOCATION_CODE=@LOCATION_CODE
			END
		IF @TYPE = 'GETPROJECT'
			BEGIN
				SELECT DISTINCT PROJECT_CODE,PROJECT_NAME FROM PROJECT_MASTER WHERE LOCATION_CODE=@LOCATION_CODE AND ACTIVE=1
			END
		IF @TYPE = 'GETPROJECTMANAGER'
			BEGIN
				SELECT DISTINCT EMPLOYEE_CODE,EMPLOYEE_NAME FROM EMPLOYEE_MASTER WHERE  ACTIVE=1 --AND LOCATION_CODE=@LOCATION_CODE 
			END		
END









GO
/****** Object:  StoredProcedure [dbo].[sp_UserLogin]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- Author:	Neeraj Saxena

-- ALTER date: July 05, 2012

-- =============================================

CREATE PROCEDURE [dbo].[sp_UserLogin]

	@ASSET_TYPE nvarchar(50)=NULL,

	@TYPE nvarchar(50)=NULL,

	@OPTYPE nvarchar(50)=NULL,

	@USER_ID nvarchar(50)=NULL,

	@PASSWORD nvarchar(50)=NULL,

	@NEWPASSWORD nvarchar(50)=NULL,

	@SESSION_ID nvarchar(50)=NULL,

	@USER_NAME nvarchar(50)=NULL,

	@USER_EMAIL nvarchar(50)=NULL,

	@LOC_CODE nvarchar(50)=NULL,

	@PARENT_LOC_CODE nvarchar(50)=NULL,

	@COMP_CODE nvarchar(50)=NULL,

	@GROUP_CODE nvarchar(50)=NULL,

	@ACTIVE bit=NULL,

	@CREATED_BY nvarchar(50)=NULL,

	@MODIFIED_BY nvarchar(50)=NULL,

	@TECH_OPS_EMAIL nvarchar(50)=NULL,

	@COMP_LOCATION nvarchar(50)=NULL,

	@LOC_LEVEL int=NULL

	

AS

BEGIN

		IF @TYPE = 'VALIDATEUSERLOGIN'

			BEGIN

				SELECT * FROM USER_ACCOUNTS WHERE USER_ID=@USER_ID AND PASSWORD=@PASSWORD COLLATE SQL_Latin1_General_CP1_CS_AS AND COMP_CODE=@COMP_CODE
				AND (LOCATION_CODE =  ( CASE WHEN @LOC_CODE = '' THEN LOCATION_CODE ELSE @LOC_CODE  END)
				or UPPER(@USER_ID)=UPPER('Sysadmin'))
				 AND ACTIVE=1

			END

        IF @TYPE = 'SAVELOGGEDINSESSIONID'

			BEGIN

				UPDATE USER_ACCOUNTS SET USER_SESSION_ID=@SESSION_ID WHERE USER_ID=@USER_ID  AND COMP_CODE=@COMP_CODE AND USER_SESSION_ID IS NULL					

			END

		IF @TYPE = 'UPDATELOGGEDINSESSIONID'

			BEGIN

				UPDATE USER_ACCOUNTS SET USER_SESSION_ID=NULL WHERE USER_ID=@USER_ID AND COMP_CODE=@COMP_CODE

			END

		IF @TYPE = 'GETLOGGEDINSESSIONID'

			BEGIN

				SELECT USER_SESSION_ID FROM USER_ACCOUNTS WHERE USER_ID=@USER_ID AND COMP_CODE=@COMP_CODE

			END

		IF @TYPE = 'GETGROUPRIGHTS'

			BEGIN

				SELECT * FROM vw_UserGroupRights WHERE USER_ID= @USER_ID AND COMP_CODE=@COMP_CODE

			END

		IF @TYPE = 'SAVEUPDATEUSER'

			BEGIN

				IF(@OPTYPE='SAVE')

					BEGIN

						INSERT INTO USER_ACCOUNTS (USER_ID,USER_NAME,PASSWORD,USER_EMAIL,COMP_CODE,LOCATION_CODE,GROUP_CODE,ACTIVE,CREATED_BY,CREATED_ON,TECHOPS_EMAIL)

                         VALUES (@USER_ID,@USER_NAME,@PASSWORD,@USER_EMAIL,@COMP_CODE,@LOC_CODE,@GROUP_CODE,@ACTIVE,@CREATED_BY,GETDATE(),@TECH_OPS_EMAIL)

					END

				ELSE IF (@OPTYPE='UPDATE')

					BEGIN					

						UPDATE USER_ACCOUNTS SET USER_NAME=@USER_NAME,ACTIVE=@ACTIVE,USER_EMAIL=@USER_EMAIL, 

						 LOCATION_CODE=@LOC_CODE, GROUP_CODE=@GROUP_CODE, MODIFIED_BY=@MODIFIED_BY , MODIFIED_ON = GETDATE(),TECHOPS_EMAIL=@TECH_OPS_EMAIL

						 WHERE USER_ID=@USER_ID AND COMP_CODE=@COMP_CODE

					END

			END

		IF @TYPE = 'CHANGEPASSWORD'

			BEGIN

				UPDATE USER_ACCOUNTS SET PASSWORD=@NEWPASSWORD

                 WHERE USER_ID=@USER_ID AND PASSWORD=@PASSWORD AND COMP_CODE=@COMP_CODE

			END

		IF @TYPE = 'CHECKDUPLICATEUSER'

			BEGIN

				SELECT * FROM USER_ACCOUNTS WHERE USER_ID=@USER_ID AND COMP_CODE=@COMP_CODE

			END

		IF @TYPE = 'GETUSERDETAILS'

			BEGIN

				SELECT DISTINCT UA.USER_ID,UA.USER_NAME,UA.USER_EMAIL,CM.COMP_NAME,LM.STORAGE_LOC_NAME LOC_NAME,GM.GROUP_NAME,GM.GROUP_CODE,UA.ACTIVE,UA.LOCATION_CODE,

                UA.TECHOPS_EMAIL FROM USER_ACCOUNTS UA INNER JOIN GROUP_MASTER GM

                ON UA.GROUP_CODE = GM.GROUP_CODE INNER JOIN COMPANY_MASTER CM ON UA.COMP_CODE = CM.COMP_CODE

                INNER JOIN STORAGE_LOCATION_MASTER LM ON UA.LOCATION_CODE = LM.STORAGE_LOC_CODE

                WHERE UA.COMP_CODE = GM.COMP_CODE  AND UA.COMP_CODE = @COMP_CODE

			END

		IF @TYPE = 'DELETEUSER'

			BEGIN

				DELETE FROM USER_ACCOUNTS WHERE USER_ID =@USER_ID  AND COMP_CODE=@COMP_CODE AND GROUP_CODE <> 'SYSADMIN'

			END

		IF @TYPE = 'GETUSERPASSWORD'

			BEGIN

				SELECT PASSWORD FROM dbo.USER_ACCOUNTS WHERE USER_ID=@USER_ID AND USER_EMAIL=@USER_EMAIL AND COMP_CODE=@COMP_CODE

			END

		IF @TYPE = 'GETLOCATION'

			BEGIN

				--SELECT LOC_CODE, LOC_NAME FROM LOCATION_MASTER WHERE PARENT_LOC_CODE LIKE ''+@PARENT_LOC_CODE+'%' AND 

				--LOC_LEVEL=@LOC_LEVEL AND STORAGE_LOC_CODE=@LOC_CODE AND ACTIVE=1

				SELECT STORAGE_LOC_CODE as LOC_CODE,STORAGE_LOC_NAME as LOC_NAME FROM STORAGE_LOCATION_MASTER WHERE ACTIVE=1 ;

			END

		IF @TYPE = 'GETGROUP'
			BEGIN

				SELECT GROUP_CODE,GROUP_NAME FROM GROUP_MASTER WHERE COMP_CODE =@COMP_CODE AND ACTIVE = 1

			END

		IF @TYPE = 'GETCOMPANY'

			BEGIN

				SELECT DISTINCT COMP_CODE,COMP_NAME FROM COMPANY_MASTER WHERE ACTIVE=1

			END

		IF @TYPE = 'GETLOCCOMPANY'

			BEGIN

				SELECT COMP_CODE,COMP_NAME FROM COMPANY_LOCATION WHERE LOCATION=@COMP_LOCATION AND ACTIVE=1

			END

		IF @TYPE = 'GETUSEREMAILID'

			BEGIN

				SELECT TECHOPS_EMAIL FROM USER_ACCOUNTS WHERE USER_ID=@USER_ID AND COMP_CODE=@COMP_CODE

			END

		IF @TYPE = 'GETLOGINUSERGROUP'

			BEGIN

				SELECT GROUP_CODE FROM USER_ACCOUNTS WHERE USER_ID=@USER_ID AND COMP_CODE=@COMP_CODE

			END

		IF @TYPE = 'GETCOMPLOCATION'

			BEGIN

				SELECT DISTINCT SLM.STORAGE_LOC_CODE,SLM.STORAGE_LOC_NAME FROM COMPANY_MASTER CM INNER JOIN STORAGE_LOCATION_MASTER SLM ON

				SLM.STORAGE_LOC_CODE=CM.STORAGE_LOC_CODE WHERE CM.COMP_CODE=@COMP_CODE

			END

END













GO
/****** Object:  StoredProcedure [dbo].[SYSTEM_HEALTH_INSERT_UPDATE]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SYSTEM_HEALTH_INSERT_UPDATE]
(
@HEALTH_TYPE VARCHAR(10),
@READER_IP VARCHAR(15),
@MSZ VARCHAR(100)
)
AS
BEGIN

DECLARE @COUNT INT
SET @COUNT=0;
SELECT @COUNT=COUNT(*) FROM dbo.SYSTEM_HEALTH WHERE READER_IP=@READER_IP 
IF @COUNT <=0
BEGIN
IF @HEALTH_TYPE='APP'
BEGIN 
INSERT INTO dbo.SYSTEM_HEALTH(READER_IP,APPLICATION_STATUS,LAST_UPDATED)
VALUES(@READER_IP,@MSZ,GETDATE())
END
ELSE IF @HEALTH_TYPE='PING'
BEGIN
INSERT INTO dbo.SYSTEM_HEALTH(READER_IP,PING_STATUS,LAST_UPDATED)
VALUES(@READER_IP,@MSZ,GETDATE())
END
ELSE IF @HEALTH_TYPE='EXP'
BEGIN
INSERT INTO dbo.SYSTEM_HEALTH(READER_IP,APPLICATION_EXCEPTION,LAST_UPDATED)
VALUES(@READER_IP,@MSZ,GETDATE())
END
END
ELSE IF @COUNT>0
BEGIN
IF @HEALTH_TYPE='APP'
BEGIN 
UPDATE dbo.SYSTEM_HEALTH SET APPLICATION_STATUS=@MSZ,LAST_UPDATED=GETDATE()
WHERE READER_IP = @READER_IP
END
ELSE IF @HEALTH_TYPE='PING'
BEGIN
UPDATE dbo.SYSTEM_HEALTH SET PING_STATUS=@MSZ,LAST_UPDATED=GETDATE()
WHERE READER_IP = @READER_IP
END
ELSE IF @HEALTH_TYPE='EXP'
BEGIN
UPDATE dbo.SYSTEM_HEALTH SET APPLICATION_EXCEPTION=@MSZ,LAST_UPDATED=GETDATE()
WHERE READER_IP = @READER_IP
END
END
END





GO
/****** Object:  StoredProcedure [dbo].[ud_mRunningSerialNo]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ud_mRunningSerialNo] 
@SiteID varchar(10),
@PrintQty int,
@TransType varchar(50),
@LineNo varchar(10)='0',
@MonthWise bit=0,
@Output varchar(20)=null output
As
Begin
	Declare @MaxSerialNo varchar(20),@Year varchar(10),@Month varchar(10)
	Declare @Cnt int;
	set @Year=DATEPART(yyyy,GETDATE())
	set @Month=DATEPART(mm,GETDATE())

	if(@LineNo='0' And @MonthWise=0)
		Begin
			set @Year=0
			set @Month=0
			Select @MaxSerialNo=ISNULL(MAX(SerialNo),0)+1 from mRunningSerialNo where SiteID=@SiteID and TransType=@TransType
		End
	Else if(@LineNo='0' And @MonthWise=1)
		Begin
			Select @MaxSerialNo=ISNULL(MAX(SerialNo),0)+1 from mRunningSerialNo
			where SiteID=@SiteID and TransType=@TransType and MonthWise=@MonthWise and [Year]=@Year and [Month]=@Month 
		End
	Else
		Select @MaxSerialNo=ISNULL(MAX(SerialNo),0)+1 from mRunningSerialNo
		where SiteID=@SiteID and TransType=@TransType and [LineNo]=@LineNo and [Year]=@Year and [Month]=@Month
	if(@MaxSerialNo=1)
		Begin
			if(@LineNo='0' And @MonthWise=0)
				Insert into mRunningSerialNo(SiteID,SerialNo,TransType) values(@SiteID,@PrintQty,@TransType)
			Else 
				Insert into mRunningSerialNo(SiteID,SerialNo,TransType,[LineNo],[Year],[Month],MonthWise) values(@SiteID,@PrintQty,@TransType,@LineNo,@Year,@Month,@MonthWise)
		End
	Else
		Begin
			if(@LineNo='0' And @MonthWise=0)
				Update mRunningSerialNo set SerialNo=SerialNo+@PrintQty where SiteID=@SiteID and TransType=@TransType
			Else if(@LineNo='0' And @MonthWise=1)
				Update mRunningSerialNo set SerialNo=SerialNo+@PrintQty 
				where SiteID=@SiteID and TransType=@TransType and MonthWise=@MonthWise and [Year]=@Year and [Month]=@Month
			Else 
				Update mRunningSerialNo set SerialNo=SerialNo+@PrintQty 
				where SiteID=@SiteID and TransType=@TransType and [LineNo]=@LineNo and [Year]=@Year and [Month]=@Month
		End
		if(@Month=0)
			Set @Output=@MaxSerialNo
		--else if(@TransType='MASTERCARTON')
		--	set @Output=@Year + RIGHT('0' + @Month, 2) + RIGHT('00000' + @MaxSerialNo, 6)
		--else if(@TransType='CYCLECOUNT')
		--	set @Output=@Year + RIGHT('0' + @Month, 2) + RIGHT('00000' + @MaxSerialNo, 6)
		else 
			set @Output=@Year + RIGHT('0' + @Month, 2) + RIGHT('000000' + @MaxSerialNo, 5)
	--Select @MaxSerialNo
End

















GO
/****** Object:  StoredProcedure [dbo].[USP_ApprovedAssetRequest]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [dbo].[USP_ApprovedAssetRequest]


	@Type varchar(50) =''



,	@LOCATION_CODE varchar(20)= null



,	@REQUEST_HDR_ID varchar(20) =null



,	@PM_APPROVE bit =null



,	@PM_REMARKS varchar(50) =null



,	@CMF_APPROVE bit =null



,	@CMF_REMARKS varchar(50)= null



,	@IS_CLEARANCE bit= null

,	@IS_Received bit= null



,	@Clearance_Code int =null



,	@ClearanceRemarks varchar(50) =null



,	@STAGE int =null



,	@ActionON datetime =null



,	@ActionBY varchar(50) =null



,	@AssetCode Nvarchar(max) =null







AS



BEGIN







IF @Type ='PMAPPROVED'



BEGIN



  Update MOVEMENT_REQUEST_HDR 



  Set



PM_APPROVE =@PM_APPROVE,



PM_REMARKS =@PM_REMARKS,



STAGE =@STAGE,



PM_APPROVED_ON =@ActionON,



PM_APPROVED_BY =@ActionBY



WHERE LOCATION_CODE =@LOCATION_CODE AND  REQUEST_HDR_ID =@REQUEST_HDR_ID;







END







ELSE IF @TYPE ='CMFAPPROVED'



BEGIN 







UPDATE MOVEMENT_REQUEST_HDR



set



CMF_APPROVE =@CMF_APPROVE,



CMF_REMARKS =@CMF_REMARKS,



CMF_APPROVED_ON =@ActionON,



CMF_APPROVED_BY =@ActionBY,



STAGE =@STAGE



WHERE LOCATION_CODE =@LOCATION_CODE AND  REQUEST_HDR_ID =@REQUEST_HDR_ID;



END 















ELSE IF @Type ='CLEARANCE'



BEGIN











if not Exists ( select 'X' from [MOVEMENT_REQUEST_CLEARANCE] Where  LOCATION_CODE =@LOCATION_CODE AND  REQUEST_HDR_ID =@REQUEST_HDR_ID AND [CLEARANCE_CODE] = @Clearance_Code)



BEGIN



INSERT INTO [MOVEMENT_REQUEST_CLEARANCE]



           ([LOCATION_CODE]



           ,[CLEARANCE_CODE]



           ,[REQUEST_HDR_ID]



		   ,[Remarks]



           ,[CREATED_ON]



           ,[CREATED_BY])



     VALUES



           (



		   @LOCATION_CODE



		  ,@Clearance_Code



		  ,@REQUEST_HDR_ID



		  ,@ClearanceRemarks



		  ,@ActionON



		  ,@ActionBY



		   );







END











END 







ELSE IF @Type ='CLEARANEREQUEST'



BEGIN 







if Exists( SELECT  'X' from MOVEMENT_REQUEST_HDR WHERE  ISNULL(IS_CLEARANCE,0)= 0  AND ISNULL(CLEARANCE_BY,'') ='' AND CLEARANCE_ON is null  AND  LOCATION_CODE =@LOCATION_CODE AND  REQUEST_HDR_ID =@REQUEST_HDR_ID )



BEGIN 







UPDATE MOVEMENT_REQUEST_HDR



set



CLEARANCE_ON =@ActionON,



IS_CLEARANCE =@IS_CLEARANCE,



CLEARANCE_BY =@ActionBY,



STAGE =@STAGE



WHERE LOCATION_CODE =@LOCATION_CODE AND  REQUEST_HDR_ID =@REQUEST_HDR_ID;















END 











END 











ELSE IF @Type = 'RECEIVEDREQUEST'



BEGIN 







UPDATE MOVEMENT_REQUEST_HDR 







SET 



STAGE =@STAGE ,

IsReceived =@IS_Received,

RECEIVED_ON =@ActionON ,



RECEIVED_BY = @ActionBY







WHERE LOCATION_CODE =@LOCATION_CODE AND  REQUEST_HDR_ID =@REQUEST_HDR_ID;







END











ELSE IF @Type = 'CLEARANCERECEIVED'



BEGIN











if Exists( SELECT  'X' from MOVEMENT_REQUEST_HDR WHERE  ISNULL(REC_CLEARANCE  ,0)= 0  AND ISNULL(REC_CLEARANCE_BY,'') ='' AND REC_CLEARANCE_ON is null  AND  LOCATION_CODE =@LOCATION_CODE AND  REQUEST_HDR_ID =@REQUEST_HDR_ID )



BEGIN 







UPDATE MOVEMENT_REQUEST_HDR



set



REC_CLEARANCE =@IS_CLEARANCE,



REC_CLEARANCE_ON =@ActionON,



REC_CLEARANCE_BY =@ActionBY,



STAGE =@STAGE



WHERE LOCATION_CODE =@LOCATION_CODE AND  REQUEST_HDR_ID =@REQUEST_HDR_ID;











INSERT INTO [ASSET_ACQUISITION_HISTORY]



           ([RUNNING_SERIAL_NO]



           ,[ASSET_CODE]



           ,[TAG_ID]



           ,[ASSET_ID]



           ,[SERIAL_CODE]



           ,[CATEGORY_CODE]



           ,[ASSET_LOCATION]



           ,[PLANT]



           ,[LOCATION]



           ,[CUSTOMER_ORDER_NO]



           ,[PROJECT_NAME]



           ,[SUB_PROJECT_NAME]



           ,[PROJECT_MANAGER]



           ,[ASSIGN_PRO_TO_EMP]



           ,[COMP_CODE]



           ,[VENDOR_CODE]



           ,[INSTALLED_DATE]



           ,[PURCHASED_DATE]



           ,[PURCHASED_AMT]



           ,[CURRENCY]



           ,[TRANSFER_PRICE]



           ,[LOCAL_CURRENCY]



           ,[PO_NUMBER]



           ,[PO_DATE]



           ,[INVOICE_NO]



        ,[SALE_DATE]



           ,[SALE_AMT]



           ,[CREATED_BY]



           ,[CREATED_ON]



           ,[ASSET_MAKE]



           ,[MODEL_NAME]



           ,[ASSET_PROCESS]



           ,[SECURITY_CLASSIFICATION]



           ,[ASSET_SIZE]



           ,[ASSET_VLAN]



           ,[ASSET_HDD]



           ,[ASSET_PROCESSOR]



           ,[ASSET_RAM]



 ,[ASSET_IMEI_NO]



           ,[ASSET_PHONE_MEMORY]



           ,[ASSET_SERVICE_PROVIDER]



           ,[ASSET_TYPE]



           ,[ASSET_BOE]



           ,[ASSET_REGISTER_NO]



           ,[BONDED_TYPE]



           ,[BOND_NO]



           ,[CAPITALISED_STATUS]



           ,[VERIFIABLE_STATUS]



           ,[PORT_NO]



           ,[ASSET_ALLOCATED]



           ,[SOLD_SCRAPPED_STATUS]



           ,[SECURITY_GATE_ENTRY_NO]



           ,[SECURITY_GATE_ENTRY_DATE]



           ,[AMC_WARRANTY_START_DATE]



           ,[AMC_WARRANTY_END_DATE]



           ,[REMARKS]



           ,[ASSET_APPROVED]



           ,[AMC_WARRANTY]



           ,[WORKSTATION_NO]



           ,[COST_CENTER_NO]



           ,[COMPANY_NAME]



           ,[DEPARTMENT]



           ,[INVENTORY_NOTE]



           ,[ASSET_DESCRIPTION]



           ,[ASSET_MAIN_TEXT]



           ,[ASSET_DESCRIPTION_1]



           ,[ACCT_DE]



           ,[ROOM]



           ,[BA]



           ,[UPDATED_ON]



           ,[UPDATED_BY]



           ,[EX_FIELD1]



           ,[EX_FIELD2]



           ,[EX_FIELD3]



           ,[EX_FIELD4]



           ,[EX_FIELD5]



           ,[Status]



           ,[MOVED_ON]



           ,[MOVED_BY]
			,RequestID
			,RequestStatus

		   )

SELECT 



      T1.[RUNNING_SERIAL_NO]



      ,T1.[ASSET_CODE]



      ,T1.[TAG_ID]



      ,T1.[ASSET_ID]



      ,T1.[SERIAL_CODE]



      ,T1.[CATEGORY_CODE]



      ,T1.[ASSET_LOCATION]



      ,T1.[PLANT]



      ,T1.[LOCATION]



      ,T1.[CUSTOMER_ORDER_NO]



      ,T1.[PROJECT_NAME]



      ,T1.[SUB_PROJECT_NAME]



      ,T1.[PROJECT_MANAGER]



      ,T1.[ASSIGN_PRO_TO_EMP]



      ,T1.[COMP_CODE]



      ,T1.[VENDOR_CODE]



      ,T1.[INSTALLED_DATE]



      ,T1.[PURCHASED_DATE]



      ,T1.[PURCHASED_AMT]



      ,T1.[CURRENCY]



      ,T1.[TRANSFER_PRICE]



      ,T1.[LOCAL_CURRENCY]



      ,T1.[PO_NUMBER]



      ,T1.[PO_DATE]



      ,T1.[INVOICE_NO]



      ,T1.[SALE_DATE]



      ,T1.[SALE_AMT]



      ,T1.[CREATED_BY]



      ,T1.[CREATED_ON]



      ,T1.[ASSET_MAKE]



      ,T1.[MODEL_NAME]



      ,T1.[ASSET_PROCESS]



      ,T1.[SECURITY_CLASSIFICATION]



      ,T1.[ASSET_SIZE]



      ,T1.[ASSET_VLAN]



      ,T1.[ASSET_HDD]



      ,T1.[ASSET_PROCESSOR]



      ,T1.[ASSET_RAM]



      ,T1.[ASSET_IMEI_NO]



      ,T1.[ASSET_PHONE_MEMORY]



      ,T1.[ASSET_SERVICE_PROVIDER]



      ,T1.[ASSET_TYPE]



      ,T1.[ASSET_BOE]



      ,T1.[ASSET_REGISTER_NO]



      ,T1.[BONDED_TYPE]



      ,T1.[BOND_NO]



      ,T1.[CAPITALISED_STATUS]



      ,T1.[VERIFIABLE_STATUS]



      ,T1.[PORT_NO]



      ,T1.[ASSET_ALLOCATED]



      ,T1.[SOLD_SCRAPPED_STATUS]



      ,T1.[SECURITY_GATE_ENTRY_NO]



      ,T1.[SECURITY_GATE_ENTRY_DATE]



      ,T1.[AMC_WARRANTY_START_DATE]



      ,T1.[AMC_WARRANTY_END_DATE]



      ,T1.[REMARKS]



      ,T1.[ASSET_APPROVED]



      ,T1.[AMC_WARRANTY]



      ,T1.[WORKSTATION_NO]



      ,T1.[COST_CENTER_NO]



      ,T1.[COMPANY_NAME]



      ,T1.[DEPARTMENT]



      ,T1.[INVENTORY_NOTE]



      ,T1.[ASSET_DESCRIPTION]



      ,T1.[ASSET_MAIN_TEXT]



      ,T1.[ASSET_DESCRIPTION_1]



      ,T1.[ACCT_DE]



      ,T1.[ROOM]



      ,T1.[BA]



      ,T1.[UPDATED_ON]



      ,T1.[UPDATED_BY]



      ,T1.[EX_FIELD1]



      ,T1.[EX_FIELD2]



      ,T1.[EX_FIELD3]



      ,T1.[EX_FIELD4]



      ,T1.[EX_FIELD5]



      ,T1.[Status]



	  ,@ActionON
	  ,@ActionBY
	  ,T3.REQUEST_HDR_ID
	  ,T3.STAGE


  FROM [ASSET_ACQUISITION] T1 inner join movement_request_dtl T2
    ON  T1.ASSET_CODE = T2.ASSET_CODE 
	INNER JOIN   MOVEMENT_REQUEST_HDR T3 on T3.REQUEST_HDR_ID = T2.REQUEST_HDR_ID


WHERE T2.REQUEST_HDR_ID =   @REQUEST_HDR_ID;











DECLARE @LOcationTo varchar(50) ='';



SET @LOcationTo = ( SELECT LOCATION_TO from MOVEMENT_REQUEST_HDR WHERE  REQUEST_HDR_ID = @REQUEST_HDR_ID);







UPDATE ASSET_ACQUISITION



SET  Status =0 ,



ASSET_APPROVED =0,



IsRFIDApproved =0,



RFIDApprovedOn=NULL ,



LOCATION = ISNULL(@LOcationTo,LOCATION)



FROM  ASSET_ACQUISITION T1 



 INNER JOIN  movement_request_dtl T2
ON  T1.ASSET_CODE = T2.ASSET_CODE 
WHERE T2.REQUEST_HDR_ID = @REQUEST_HDR_ID;

UPDATE movement_request_dtl set IsRequested=1 where REQUEST_HDR_ID = @REQUEST_HDR_ID;


END
END


ELSE IF @Type='CANCELREQUEST'



BEGIN


INSERT INTO [asset_acquisition_history] 
            ([running_serial_no], 
             [asset_code], 
             [tag_id], 
             [asset_id], 
             [serial_code], 
             [category_code], 
             [asset_location], 
             [plant], 
             [location], 
             [customer_order_no], 
             [project_name], 
             [sub_project_name], 
             [project_manager], 
             [assign_pro_to_emp], 
             [comp_code], 
             [vendor_code], 
             [installed_date], 
             [purchased_date], 
             [purchased_amt], 
             [currency], 
             [transfer_price], 
             [local_currency], 
             [po_number], 
             [po_date], 
             [invoice_no], 
             [sale_date], 
             [sale_amt], 
             [created_by], 
             [created_on], 
             [asset_make], 
             [model_name], 
             [asset_process], 
             [security_classification], 
             [asset_size], 
             [asset_vlan], 
             [asset_hdd], 
             [asset_processor], 
             [asset_ram], 
             [asset_imei_no], 
             [asset_phone_memory], 
             [asset_service_provider], 
             [asset_type], 
             [asset_boe], 
             [asset_register_no], 
             [bonded_type], 
             [bond_no], 
             [capitalised_status], 
             [verifiable_status], 
             [port_no], 
             [asset_allocated], 
             [sold_scrapped_status], 
             [security_gate_entry_no], 
             [security_gate_entry_date], 
             [amc_warranty_start_date], 
             [amc_warranty_end_date], 
             [remarks], 
             [asset_approved], 
             [amc_warranty], 
             [workstation_no], 
             [cost_center_no], 
             [company_name], 
             [department], 
             [inventory_note], 
             [asset_description], 
             [asset_main_text], 
             [asset_description_1], 
             [acct_de], 
             [room], 
             [ba], 
             [updated_on], 
             [updated_by], 
             [ex_field1], 
             [ex_field2], 
             [ex_field3], 
             [ex_field4], 
             [ex_field5], 
             [status], 
             [moved_on], 
             [moved_by],
			 RequestID,
			 RequestStatus
			 ) 
SELECT T1.[running_serial_no], 
       T1.[asset_code], 
       T1.[tag_id], 
       T1.[asset_id], 
       T1.[serial_code], 
       T1.[category_code], 
       T1.[asset_location], 
       T1.[plant], 
       T1.[location], 
       T1.[customer_order_no], 
       T1.[project_name], 
       T1.[sub_project_name], 
       T1.[project_manager], 
       T1.[assign_pro_to_emp], 
       T1.[comp_code], 
       T1.[vendor_code], 
       T1.[installed_date], 
       T1.[purchased_date], 
       T1.[purchased_amt], 
       T1.[currency], 
       T1.[transfer_price], 
       T1.[local_currency], 
       T1.[po_number], 
       T1.[po_date], 
       T1.[invoice_no], 
       T1.[sale_date], 
       T1.[sale_amt], 
       T1.[created_by], 
       T1.[created_on], 
       T1.[asset_make], 
       T1.[model_name], 
       T1.[asset_process], 
       T1.[security_classification], 
       T1.[asset_size], 
       T1.[asset_vlan], 
       T1.[asset_hdd], 
       T1.[asset_processor], 
       T1.[asset_ram], 
       T1.[asset_imei_no], 
       T1.[asset_phone_memory], 
       T1.[asset_service_provider], 
       T1.[asset_type], 
       T1.[asset_boe], 
       T1.[asset_register_no], 
       T1.[bonded_type], 
       T1.[bond_no], 
       T1.[capitalised_status], 
       T1.[verifiable_status], 
       T1.[port_no], 
       T1.[asset_allocated], 
       T1.[sold_scrapped_status], 
       T1.[security_gate_entry_no], 
       T1.[security_gate_entry_date], 
       T1.[amc_warranty_start_date], 
       T1.[amc_warranty_end_date], 
       T1.[remarks], 
       T1.[asset_approved], 
       T1.[amc_warranty], 
       T1.[workstation_no], 
       T1.[cost_center_no], 
       T1.[company_name], 
       T1.[department], 
       T1.[inventory_note], 
       T1.[asset_description], 
       T1.[asset_main_text], 
       T1.[asset_description_1], 
       T1.[acct_de], 
       T1.[room], 
       T1.[ba], 
       T1.[updated_on], 
       T1.[updated_by], 
       T1.[ex_field1], 
       T1.[ex_field2], 
       T1.[ex_field3], 
       T1.[ex_field4], 
       T1.[ex_field5], 
       T1.[status], 
       @ActionON, 
       @ActionBY,
	   T3.REQUEST_HDR_ID,
	   T3.STAGE
	    
FROM   [asset_acquisition] T1 
       INNER JOIN movement_request_dtl T2 
               ON T1.asset_code = T2.asset_code
	INNER JOIN MOVEMENT_REQUEST_HDR T3 on T3.REQUEST_HDR_ID =T2.REQUEST_HDR_ID			    
WHERE  T2.request_hdr_id = @REQUEST_HDR_ID; 


UPDATE movement_request_dtl set IsRequested=1 where REQUEST_HDR_ID = @REQUEST_HDR_ID;

UPDATE ASSET_ACQUISITION

SET  Status =0 ,

LOCATION =@LOCATION_CODE 
FROM  ASSET_ACQUISITION T1 
INNER JOIN  movement_request_dtl T2
ON  T1.ASSET_CODE = T2.ASSET_CODE 
WHERE T2.REQUEST_HDR_ID = @REQUEST_HDR_ID;



















END



















END













GO
/****** Object:  StoredProcedure [dbo].[USP_AssetRequest]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[USP_AssetRequest] 
(
@LocationCode varchar(10)=null,
@IsPermanent bit =0,
@TransferTo varchar(50)=null,
@IsInterUnit bit =0,
@LocationTo  varchar(10)=null,
@ProjectCode varchar(50)=null,
@ReceiverEmail varchar(50) =null,
@GST_NO varchar(50) =null,
@ProjectCostCenter varchar(50)=null,
@Stage int =null ,
@ActionBy varchar(50),
@RequestId varchar(50) output
)

AS 
BEGIN  
DECLARE @REQUEST_HDR_ID  varchar(20) ='';
DECLARE @RunningSerialNO varchar(20)='';
DECLARE @ActionDate datetime = Getdate();

      EXEC Ud_mrunningserialno  @LocationCode,  1,  'MOVEMENT_REQUEST_HDR', 0,  1,  @RunningSerialNO output; 

      SET @REQUEST_HDR_ID = Concat(@LocationCode, @RunningSerialNO); 

      INSERT INTO [movement_request_hdr] 
                  ([location_code], 
                   [request_hdr_id], 
                   [is_permanent], 
                   [transfer_to], 
                   [is_interunit], 
                   [location_to], 
                   [project_code], 
                   [receiver_email], 
                   [gst_no], 
                   [project_cost_centre], 
                   [stage], 
                   [created_on], 
                   [created_by]) 
      VALUES      ( @LocationCode, 
                    @REQUEST_HDR_ID, 
                    @IsPermanent, 
                    @TransferTo, 
                    @IsInterUnit, 
                    @LocationTo, 
                    @ProjectCode, 
                    @ReceiverEmail, 
                    @GST_NO, 
                    @ProjectCostCenter, 
                    @Stage, 
                    @ActionDate, 
                    @ActionBy ); 

set @RequestId = @REQUEST_HDR_ID;

  END 








GO
/****** Object:  StoredProcedure [dbo].[USP_AssetRequestLineItem]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[USP_AssetRequestLineItem]



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









GO
/****** Object:  StoredProcedure [dbo].[Usp_assignpagetogroup]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREate  PROCEDURE [dbo].[Usp_assignpagetogroup] 
  @groupcode varchar(60) = NULL
, @comp_code varchar(60) = NULL
AS
BEGIN
  IF EXISTS (SELECT
      'X'
    FROM Group_rights
    WHERE (ISNULL(@groupcode, '') != '' AND Group_code = @groupcode)
         AND (ISNULL(@comp_code, '') != ''   AND Comp_code = @comp_code)
		 )
  BEGIN
    INSERT INTO Group_rights (Comp_code, Group_code, Page_code, Page_name, View_rights, Save_rights, 
							  Edit_rights, Delete_rights, Export_rights)
      SELECT
        @comp_code AS [Comp_code],
        @groupcode AS [Groupcode],
        T1.Page_code,
        T1.Page_name,
        0 AS [View_rights],
        0 AS [Save_rights],
        0 AS [Edit_rights],
        0 AS [Delete_rights],
        0 AS [Export_rights]
      FROM Page_master T1
      WHERE NOT EXISTS (SELECT
        'X'
      FROM Group_rights T2
      WHERE T1.Page_name = T2.Page_name
      AND Group_code = @groupcode)
  END
END

GO
/****** Object:  StoredProcedure [dbo].[USP_CategoryConfig]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[USP_CategoryConfig]
AS 
BEGIN 
 SELECT MinCategoryName , IsDisable from AlertDisable  where IsDisable =1  ;
 END 
GO
/****** Object:  StoredProcedure [dbo].[USP_GetAssetRequests]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[USP_GetAssetRequests]

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

   [doc_name] ,
   Remark

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
	   T3.Remark ,
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









GO
/****** Object:  StoredProcedure [dbo].[USP_GetUnAuthrizeLaptop]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[USP_GetUnAuthrizeLaptop]
AS 
BEGIN 

BEGIN TRY 
DECLARE @EmailFlag bit = 0 ;
DECLARE @UnAuthrizeEmail bit =0 ;
DECLARE @AssetCategory varchar(20) ='LAPTOP' ;
DECLARE @NoOfDays int =5 ;


CREATE Table  #UnAuthrizeLapTopMovement
(
 LocationCode varchar(20)
,LocationName varchar(50)
,AssetCode varchar(20)
,SerialCode varchar(50)
,CategoryCode varchar(50)
,AssetLocation varchar(50)
,Plant varchar(50)
,ProjectCode varchar(50)
,CategoryName varchar(50)
,CMFEmailId varchar(50)
,GSGEmailId varchar(50)
,PMEmailId varchar(50)
,ProjectName varchar(50)
,ProjectManager varchar(50)
,MovedOn datetime
) ;

Declare @Tbl Table (SNO int, AssetCode varchar(20));

insert into @tbl (SNO, AssetCode ) Select Row_Number() over(order by (SELECT 1)) AS[SNO], T1.Asset_Code 
from MOVEMENT_TAG_CHECK T1
Inner join ASSET_ACQUISITION  T2 on T1.ASSET_CODE =t2.ASSET_CODE 
INNER JOIN CATEGORY_MASTER  T3 on T2.CATEGORY_CODE = T3.CATEGORY_CODE 
WHERE ISNULL(T1.EMAIL_FLAG,0) =@EmailFlag  
AND T1.STATUS = @UnAuthrizeEmail
 AND UPPER(T3.CATEGORY_NAME) = @AssetCategory ;



DECLARE @CTR int =0 , @Total int=0  ,  @AssetCode varchar(50) ='';

SET @Total = (SELECT COUNT(*) from @Tbl) ;
WHILE @CTR < @Total 
BEGIN 

SET @AssetCode = (SELECT T1.AssetCode from @Tbl T1 WHERE T1.SNO =(@CTR+1) ) ;

;With x as 
(
SELECT ROW_NUMBER() over(order by (SELECT 1)) AS [SNO] , 
T1.ASSET_CODE , T1.CREATED_ON
 from MOVEMENT_TAG_CHECK  T1
WHERE T1.EMAIL_FLAG =@EmailFlag   AND T1.ASSET_CODE = @AssetCode   
)

Insert into #UnAuthrizeLapTopMovement
(
 AssetCode,MovedOn,LocationCode 
,LocationName ,CMFEmailId,GSGEmailId,PMEmailId
,SerialCode,CategoryCode,Plant,ProjectCode
,ProjectName,ProjectManager
,CategoryName,AssetLocation  
)

SELECT 
 T1.ASSET_CODE , t1.CREATED_ON, t3.LOCATION ,t4.STORAGE_LOC_NAME , t4.CMF_GROUP_EMAIL, T6.PM_EMAIL
,t4.GSG_GROUP_EMAIL, T3.SERIAL_CODE ,T3.CATEGORY_CODE,T3.PLANT ,T3.PROJECT_NAME as[ProjectCode]
,T6.PROJECT_NAME,T6.PROJECT_MANAGER,T5.CATEGORY_NAME
,T3.ASSET_LOCATION 
 from x T1 inner join x T2 on t1.SNO= t2.SNO+1
inner join ASSET_ACQUISITION T3 on t3.ASSET_CODE =t1.ASSET_CODE 
inner join STORAGE_LOCATION_MASTER T4 on t4.STORAGE_LOC_CODE=t3.LOCATION
Inner join CATEGORY_MASTER  T5 on T3.CATEGORY_CODE = T5.CATEGORY_CODE
Inner join PROJECT_MASTER T6 on T6.PROJECT_CODE =T3.PROJECT_NAME
where DATEDIFF (DAY, T2.CREATED_ON , T1.CREATED_ON) >@NoOfDays  ;


SET @CTR = @CTR +1 ;

END

SELECT * from #UnAuthrizeLapTopMovement ; 

If(OBJECT_ID('tempdb..#UnAuthrizeLapTopMovement') Is Not Null)
Begin
    Drop Table #UnAuthrizeLapTopMovement ;
End


END TRY 
BEGIN CATCH
 If(OBJECT_ID('tempdb..#UnAuthrizeLapTopMovement') Is Not Null)
Begin
    Drop Table #UnAuthrizeLapTopMovement ;
End
END CATCH 



END


GO
/****** Object:  StoredProcedure [dbo].[USP_MailAlert]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--SELECT * from [dbo].[MOVEMENT_REQUEST_HDR] T1 Inner JOIN [dbo].[MOVEMENT_REQUEST_DTL] T2
--on T1.REQUEST_HDR_ID = T2. REQUEST_HDR_ID

--WHERE isnull(T2.IsRequested,0) =0

--CREATE Table AssetNotification
--(
--RequestId varchar(20),
--ReqStage int,
--AlertOn Datetime
--)

CREATE Procedure [dbo].[USP_MailAlert]
@RequestId varchar(20)='',
@ReqStage int =0,
@TYPE varchar(30) =''

AS 
BEGIN 

 if @TYPE ='IS_SEND_ALERT'
 BEGIN

 
 
 IF Exists( SELECT 'X' from AssetNotification WHERE RequestId= @RequestId  AND  CAST(AlertOn AS DATE) = CAST(GetDATE() as DATE))
 BEGIN 
 SELECT 0 AS [IsSendAlert];
 END 
 ELSE 
 BEGIN 
 SELECT 1 AS [IsSendAlert];
 END 
  
 END 

 ELSE IF @TYPE ='ALERTMail'
 BEGIN 

 DELETE from AssetNotification WHERE RequestId = @RequestId  ;

 insert into AssetNotification 
 ( 
RequestId ,
ReqStage ,
AlertOn 
)
Values (@RequestId ,@ReqStage, GetDATE()) ;

 END 

END 
GO
/****** Object:  StoredProcedure [dbo].[USP_MailerAssetMovement]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROC [dbo].[USP_MailerAssetMovement]



 @EmailStatus bit=0

 ,@type varchar(50)

AS 



BEGIN 



if(@type ='ASSETREQUEST')



BEGIN 



SELECT 



        T1.[LOCATION_CODE]

      , T1.[REQUEST_HDR_ID] , T1.[IS_PERMANENT] , T1.[TRANSFER_TO], T1.[IS_INTERUNIT], T1.[LOCATION_TO]



      , T1.[PROJECT_CODE], T1.[RECEIVER_EMAIL], T1.[GST_NO], T1.[PROJECT_COST_CENTRE], T1.[PM_APPROVE]



	  , T1.[PM_REMARKS], T1.[CMF_APPROVE], T1.[CMF_REMARKS], T1.[IS_CLEARANCE], T1.[REC_CLEARANCE]



	  , T1.[STAGE], T1.[MAIL_STATUS], T1.[CREATED_ON], T1.[CREATED_BY], T1.[PM_APPROVED_ON], T1.[PM_APPROVED_BY]



	  , T1.[CMF_APPROVED_ON], T1.[CMF_APPROVED_BY], T1.[CLEARANCE_ON], T1.[CLEARANCE_BY], T1.[GATEPASS_ON]



	  , T1.[GATEPASS_BY], T1.[RECEIVED_ON], T1.[RECEIVED_BY], T1.[REC_CLEARANCE_ON], T1.[REC_CLEARANCE_BY]

	  ,DBO.UDF_GETAssetCode(T1.[REQUEST_HDR_ID]) AS [AssetCode]



FROM movement_request_hdr T1 WHERE Isnull(MAIL_STATUS,0) =isnull(@EmailStatus,0) ;





--SELECT 



--       T1.[LOCATION_CODE]



--      , T1.[REQUEST_HDR_ID] , T1.[IS_PERMANENT] , T1.[TRANSFER_TO], T1.[IS_INTERUNIT], T1.[LOCATION_TO]



--      , T1.[PROJECT_CODE], T1.[RECEIVER_EMAIL], T1.[GST_NO], T1.[PROJECT_COST_CENTRE], T1.[PM_APPROVE]



--	  , T1.[PM_REMARKS], T1.[CMF_APPROVE], T1.[CMF_REMARKS], T1.[IS_CLEARANCE], T1.[REC_CLEARANCE]



--	  , T1.[STAGE], T1.[MAIL_STATUS], T1.[CREATED_ON], T1.[CREATED_BY], T1.[PM_APPROVED_ON], T1.[PM_APPROVED_BY]



--	  , T1.[CMF_APPROVED_ON], T1.[CMF_APPROVED_BY], T1.[CLEARANCE_ON], T1.[CLEARANCE_BY], T1.[GATEPASS_ON]



--	  , T1.[GATEPASS_BY], T1.[RECEIVED_ON], T1.[RECEIVED_BY], T1.[REC_CLEARANCE_ON], T1.[REC_CLEARANCE_BY]



--,T2.Asset_Code

--,T3.Move_Tag_ID

--,T3.Email_Flag

--,T4.CMF_GROUP_EMAIL



--from movement_request_hdr  T1 LEFT join  [MOVEMENT_REQUEST_DTL] T2 ON T1.REquest_HDR_ID = T2.REquest_HDR_ID



--Left JOIN (SELECT * from  MOVEMENT_TAG_CHECK WHERE  ISNULL(Email_FLAG ,0)=@EmailStatus  AND STATUS =1 ) T3 on T3.ASSET_CODE = T2.ASSET_CODE 



--Left join STORAGE_LOCATION_MASTER T4 on T1.Location_To =T4.STORAGE_LOC_CODE







END 

ELSE IF @type ='RFIDMOVEMENT'

BEGIN





SELECT 

  T1.Location_Code 

, T1.Move_Tag_ID 

, T1.ASSET_CODE 

, T1.LOCATION_TO 

, T1.STATUS 

, T1.EMAIL_FLAG

,T1.CREATED_ON 

, T1.CREATED_BY  

,T1.MODIFIED_ON

,T4.Project_Name

,T4.PM_EMAIL

,T4.PROJECT_MANAGER

,T5.REQUEST_HDR_ID 

,T6.CMF_GROUP_EMAIL

,T6.GSG_GROUP_EMAIL

,T6.STORAGE_LOC_NAME 

,T2.SERIAL_CODE 

,T2.ASSET_ALLOCATED

,T2.ACQUISITION_ID, T2.AMC_WARRANTY, T2.AMC_WARRANTY_END_DATE, T2.AMC_WARRANTY_START_DATE

,T2.ASSET_ALLOCATED,T2.ASSET_APPROVED,T2.ASSET_BOE,T2.ASSET_DESCRIPTION,T2.ASSET_ID

,T2.ASSET_LOCATION ,T2.ASSET_MAKE, T2.ASSET_TYPE, T2.BONDED_TYPE,T2.PROJECT_NAME, T2.CATEGORY_CODE,T7.CATEGORY_NAME 

,T2.IsRFIDApproved 

from  MOVEMENT_TAG_CHECK T1 INNER JOIN ASSET_ACQUISITION  T2

ON T1.ASSET_CODE = T2.ASSET_CODE Left join Employee_Master T3 on T3.EMP_PROJECT_CODE = T2.PROJECT_NAME

Left join Project_Master T4 on T2.PROJECT_NAME = T4.PROJECT_CODE AND T4.LOCATION_CODE =T2.LOCATION

LEFT JOIN (SELECT * from MOVEMENT_REQUEST_DTL  WHERE ISNULL(IsRequested,0) =0 )  T5  on T5.ASSET_CODE = T1.ASSET_CODE

Inner  join Storage_Location_Master T6 on T6.STORAGE_LOC_CODE = T2.Location

Inner join CATEGORY_MASTER T7  on T7.CATEGORY_CODE = T2.CATEGORY_CODE

WHERE ISNULL(T1.EMAIL_FLAG ,0)=0  AND T2.ASSET_APPROVED =1 ;

--AND T7.CATEGORY_NAME !='Laptop';











--SELECT 

--  T1.Location_Code 

--, T1.Move_Tag_ID 

--, T1.ASSET_CODE 

--, T1.LOCATION_TO 

--, T1.STATUS 

--, T1.EMAIL_FLAG

--,T1.CREATED_ON 

--, T1.CREATED_BY  

--,T1.MODIFIED_ON

--,T4.Project_Name

--,T4.PM_EMAIL

--,T4.PROJECT_MANAGER

--,T5.REQUEST_HDR_ID 

--,T6.CMF_GROUP_EMAIL

--,T6.GSG_GROUP_EMAIL

--from  MOVEMENT_TAG_CHECK T1 INNER JOIN ASSET_ACQUISITION  T2

--ON T1.ASSET_CODE = T2.ASSET_CODE Left join Employee_Master T3 on T3.EMP_PROJECT_CODE = T2.PROJECT_NAME

--Left join Project_Master T4 on T2.PROJECT_NAME = T4.PROJECT_CODE AND T4.LOCATION_CODE =T2.LOCATION

--LEFT JOIN (SELECT * from MOVEMENT_REQUEST_DTL  WHERE ISNULL(IsRequested,0) =0 )  T5  on T5.ASSET_CODE = T1.ASSET_CODE

--Inner  join Storage_Location_Master T6 on T6.STORAGE_LOC_CODE = T2.Location

--WHERE ISNULL(T1.EMAIL_FLAG ,0)=0 

END 



ELSE IF @type = 'MOVEMENT_DELAY_NOTIFICATION'

BEGIN 




SELECT 
        T1.[LOCATION_CODE]

      , T1.[REQUEST_HDR_ID] , T1.[IS_PERMANENT] , T1.[TRANSFER_TO], T1.[IS_INTERUNIT], T1.[LOCATION_TO]



      , T1.[PROJECT_CODE], T1.[RECEIVER_EMAIL], T1.[GST_NO], T1.[PROJECT_COST_CENTRE], T1.[PM_APPROVE]



	  , T1.[PM_REMARKS], T1.[CMF_APPROVE], T1.[CMF_REMARKS], T1.[IS_CLEARANCE], T1.[REC_CLEARANCE]



	  , T1.[STAGE], T1.[MAIL_STATUS], T1.[CREATED_ON], T1.[CREATED_BY], T1.[PM_APPROVED_ON], T1.[PM_APPROVED_BY]



	  , T1.[CMF_APPROVED_ON], T1.[CMF_APPROVED_BY], T1.[CLEARANCE_ON], T1.[CLEARANCE_BY], T1.[GATEPASS_ON]



	  , T1.[GATEPASS_BY], T1.[RECEIVED_ON], T1.[RECEIVED_BY], T1.[REC_CLEARANCE_ON], T1.[REC_CLEARANCE_BY]

	  ,DBO.UDF_GETAssetCode(T1.[REQUEST_HDR_ID]) AS [AssetCode]
	  ,T2.Storage_LOC_Name as [LocationName]
	  ,T2.CMF_Group_Email
	  ,T2.GSG_GROUP_EMAIL
	  



FROM movement_request_hdr T1  Inner join  STORAGE_LOCATION_MASTER T2 on T1.[LOCATION_CODE] = T2.Storage_LOC_CODE
WHERE  --T1.Stage = 1 -- Clerance done 
--AND 
DATEDIFF(DAY,T1.CREATED_ON , GETDATE())>5 ;



--SELECT 

--  T1.Location_Code 

--, T1.Move_Tag_ID 

--, T1.ASSET_CODE 

--, T1.LOCATION_TO 

--, T1.STATUS 

--, T1.EMAIL_FLAG

--,T1.CREATED_ON 

--, T1.CREATED_BY  

--,T1.MODIFIED_ON

--,T4.Project_Name

--,T4.PM_EMAIL

--,T4.PROJECT_MANAGER

--,T5.REQUEST_HDR_ID 

--,T6.CMF_GROUP_EMAIL

--,T6.GSG_GROUP_EMAIL

--,T6.STORAGE_LOC_NAME 

--,T2.SERIAL_CODE 

--,T2.ASSET_ALLOCATED

--,T2.ACQUISITION_ID, T2.AMC_WARRANTY, T2.AMC_WARRANTY_END_DATE, T2.AMC_WARRANTY_START_DATE

--,T2.ASSET_ALLOCATED,T2.ASSET_APPROVED,T2.ASSET_BOE,T2.ASSET_DESCRIPTION,T2.ASSET_ID

--,T2.ASSET_LOCATION ,T2.ASSET_MAKE, T2.ASSET_TYPE, T2.BONDED_TYPE,T2.PROJECT_NAME, T2.CATEGORY_CODE,T7.CATEGORY_NAME 

--,T2.IsRFIDApproved 

--from  MOVEMENT_TAG_CHECK T1 INNER JOIN ASSET_ACQUISITION  T2

--ON T1.ASSET_CODE = T2.ASSET_CODE Left join Employee_Master T3 on T3.EMP_PROJECT_CODE = T2.PROJECT_NAME

--Left join Project_Master T4 on T2.PROJECT_NAME = T4.PROJECT_CODE AND T4.LOCATION_CODE =T2.LOCATION

--INNER JOIN (SELECT * from MOVEMENT_REQUEST_DTL  WHERE ISNULL(IsRequested,0) =0 )  T5  on T5.ASSET_CODE = T1.ASSET_CODE

--Inner  join Storage_Location_Master T6 on T6.STORAGE_LOC_CODE = T2.Location

--Inner join CATEGORY_MASTER T7  on T7.CATEGORY_CODE = T2.CATEGORY_CODE

--Inner join MOVEMENT_REQUEST_HDR T8 on T8.REQUEST_HDR_ID = T5.REQUEST_HDR_ID 

--WHERE ISNULL(T1.EMAIL_FLAG ,0)=0  AND T2.ASSET_APPROVED =1  AND T2.IsRFIDApproved =1

--AND ISNULL(T8.REQUEST_HDR_ID ,'') !='' AND T8.Stage = 1 -- Clerance done 

--AND DATEDIFF(DAY,T8.CREATED_ON , GETDATE())>5 ;









END


ELSE IF @type ='UNAUTHRISE_LAPTOP'
BEGIN
EXEC USP_UNAuthrizeLaptop  ;
END 
END 







GO
/****** Object:  StoredProcedure [dbo].[USP_ReceivedAssetMail]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PRocedure [dbo].[USP_ReceivedAssetMail]
@MovementId varchar(1000)

AS 
BEGIN 
Declare @ReceivedBy varchar(100) ='';
Declare @Subject varchar(1000) ='' ;
DEclare @Body varchar(1000)='' ;
DEclare @RequestedBy varchar(100)='' ;
Declare @AssetCode varchar(max) ;

Set @AssetCode = (SELECT DBO.UDF_GETAssetCode(@MovementId) ) ;

DECLARE @ToLocationCMFEamil  varchar(100) ='' ;
SET @ToLocationCMFEamil = (SELECT T.CMF_GROUP_EMAIL from STORAGE_LOCATION_MASTER T 
WHERE T.STORAGE_LOC_CODE =( SELECT ISNULL(T2.LOCATION_TO ,'') from MOVEMENT_REQUEST_HDR T2 WHERE T2.REQUEST_HDR_ID =@MovementId));

DECLARE @CCLocationCMFEamil  varchar(100) ='' ;
SET @CCLocationCMFEamil = (SELECT T.CMF_GROUP_EMAIL from STORAGE_LOCATION_MASTER T 
WHERE T.STORAGE_LOC_CODE =( SELECT ISNULL(T2.LOCATION_CODE ,'') from MOVEMENT_REQUEST_HDR T2 WHERE T2.REQUEST_HDR_ID =@MovementId));




SELECT @ReceivedBy = T3.USER_NAME  , @RequestedBy = T2.USER_EMAIL  
from MOVEMENT_REQUEST_HDR T1 Inner join USER_ACCOUNTS T2 on 
T1.CREATED_BY = T2.USER_ID 
Inner join USER_ACCOUNTS T3 on T1.REC_CLEARANCE_BY = t3.USER_ID
 WHERE T1.REQUEST_HDR_ID = @MovementId ;
 Set @Subject ='RTS request received';
set @Body = 'An asset has been received with asset code as : '+ @AssetCode+' RequestId :' + @MovementId +' by '+@ReceivedBy ;

exec [USP_SendMailConfiguration]
@Recipients  =@ToLocationCMFEamil ,
@SUBJECT =@Subject,
@BODY =@Body,
@CCRecipients =@CCLocationCMFEamil

END 


GO
/****** Object:  StoredProcedure [dbo].[USP_SearchAsset]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[USP_SearchAsset] 
@AssetCode varchar(50) =''
AS 
BEGIN 

SELECT T1.ASSET_CODE ,T1.LOCATION , Case When T1.Status =1  Then
(SELECT T3.REQUEST_HDR_ID  from MOVEMENT_REQUEST_DTL T2 Inner join MOVEMENT_REQUEST_HDR T3 on T2.REQUEST_HDR_ID =T3.REQUEST_HDR_ID 
WHERE ISNULL(T2.IsRequested,0) =0 and T2.ASSET_CODE =@AssetCode 
)else 'No Movement' END AS [RequestID] ,

Case When T1.Status =1  Then
(SELECT T3.STAGE   from MOVEMENT_REQUEST_DTL T2 Inner join MOVEMENT_REQUEST_HDR T3 on T2.REQUEST_HDR_ID =T3.REQUEST_HDR_ID 
WHERE ISNULL(T2.IsRequested,0) =0 and T2.ASSET_CODE =@AssetCode 
)else 0 END AS [RequestStage] 
   
from ASSET_ACQUISITION T1
WHERE ASSET_CODE =@AssetCode 

UNION ALL

SELECT top 10
T5.ASSET_CODE , T5.LOCATION , T5.RequestId,T5.RequestStatus 
 from ASSET_ACQUISITION_HISTORY T5 
WHERE T5.ASSET_CODE = @AssetCode ;
END 

GO
/****** Object:  StoredProcedure [dbo].[USP_SearchMovementRequest]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[USP_SearchMovementRequest]

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
Inner JOIN STORAGE_LOCATION_MASTER T4 on  ISNULL(T1.LOCATION_TO, T1.TRANSFER_TO)  =T4.STORAGE_LOC_CODE 

Inner JOIN USER_ACCOUNTS RequestedBy on RequestedBy.USER_ID = T1.CREATED_BY

LEFT JOIN USER_ACCOUNTS PMAppr on PMAppr.USER_ID =ISNULL(T1.PM_APPROVED_BY,'')
LEFT JOIN USER_ACCOUNTS CMFAppr on CMFAppr.USER_ID =ISNULL(T1.CMF_APPROVED_BY,'')
LEFT JOIN USER_ACCOUNTS CMFClear on CMFClear.USER_ID = ISNULL(T1.CLEARANCE_BY,'')
LEFT JOIN USER_ACCOUNTS ReceivedBY on ReceivedBY.USER_ID =ISNULL(T1.RECEIVED_BY,'')
LEFT JOIN USER_ACCOUNTS RecClearance on RecClearance.USER_ID = ISNULL(T1.REC_CLEARANCE_BY,'')
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
  OR (T1.STAGE >= @ReqStatus AND isnull(T1.PM_APPROVE,0) =1) 
  OR (T1.STAGE >= @ReqStatus AND ISNULL(T1.CMF_APPROVE,0) =1) 
  OR (T1.STAGE >= @ReqStatus AND ISNULL(T1.IS_CLEARANCE,0) =1) 
  OR (T1.STAGE >= @ReqStatus AND ISNULL(T1.IsReceived,0) =1) 
  OR (T1.STAGE >= @ReqStatus AND ISNULL(T1.REC_CLEARANCE,0)  =1) 
  OR (T1.STAGE >= @ReqStatus AND @ReqStatus =8 AND T1.PM_APPROVED_ON is not null)  -- PMReject
  OR (T1.STAGE >= @ReqStatus AND @ReqStatus =9 AND T1.CMF_APPROVED_ON is not null )  --CMFReject
  OR (T1.STAGE >= @ReqStatus AND @ReqStatus =10 AND T1.CLEARANCE_ON is not null) --ClearanceReject
  OR (T1.STAGE >= @ReqStatus AND @ReqStatus =11 AND T1.REC_CLEARANCE_ON is not null )  --ClearanceRecReject

  )))
----

AND T1.LOCATION_CODE = @LocationCode  ;

END
GO
/****** Object:  StoredProcedure [dbo].[USP_SendMailConfiguration]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[USP_SendMailConfiguration]
@Recipients varchar(max)=null,
@SUBJECT varchar(max)=null,
@BODY varchar(max)=null,
@CCRecipients varchar(max)=null
AS
 BeGIN

 DECLARE @mail_id int =0 ;
	SELECT 'Unsent';
 -- EXEC msdb.dbo.sp_send_dbmail  
 --   @profile_name = 'DBA',  
 --   @recipients = @Recipients,  
	--@copy_recipients=@CCRecipients,
 --   @body = @BODY,  
	--@body_format ='HTML',
 --   @subject = @SUBJECT,
	--@mailitem_id =@mail_id output ;
 
-- SELECT
--    CASE sent_status
--        WHEN 0 THEN 'Unsent'
--        WHEN 1 THEN 'Sent'
--        WHEN 2 THEN 'Failed'
--        WHEN 3 THEN 'Retrying'
--        END AS sent_status_desc
--FROM msdb..sysmail_mailitems WHERE mailitem_id = @mail_id;


END  


GO
/****** Object:  StoredProcedure [dbo].[USP_UNAuthrizeLaptop]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[USP_UNAuthrizeLaptop]



AS



BEGIN



DECLARE  @DisableMail BIT =0 ;



DECLARE  @EmailFlag BIT =0 ;



DECLARE  @NoOfDays INT =0;



DECLARE @CategoryName VARCHAR(20) = 'LAPTOP' ;



DECLARE @UnAuthrize BIT =1



DECLARE @ActiveTag bit =1 ;











--; With UnAuthrizeLapTop As 



--(



--SELECT T1.ASSET_CODE , MAX(T1.CREATED_ON) as[LastTagRead]   from  MOVEMENT_TAG_CHECK_LapTop T1  --MOVEMENT_TAG_CHECK T1



--Inner join ASSET_ACQUISITION T2 on T1.ASSET_CODE = T2.ASSET_CODE



--Inner join CATEGORY_MASTER T3 on T2.CATEGORY_CODE =T3.CATEGORY_CODE 



-- WHERE 



--T3.CATEGORY_CODE = ISNULL(@CategoryName,T3.CATEGORY_CODE)



--AND ISNULL(T1.EMAIL_FLAG ,0)=@EmailFlag 



--AND T1.STATUS =@UnAuthrize



--AND T2.ASSET_APPROVED =@ActiveTag



--AND T2.IsRFIDApproved =@ActiveTag



--AND CAST(T1.CREATED_ON AS DATE)>CAST(T2.RFIDApprovedOn AS DATE)



--AND DATEDIFF(DAY , T1.CREATED_ON ,GetDate())>@NoOfDays



--AND 0=@DisableMail



--GROUP BY  T1. ASSET_CODE



--) 







SELECT 



 T1.Location_Code , T1.Move_Tag_ID , T1.ASSET_CODE 



,T1.LOCATION_TO , T1.STATUS , T1.EMAIL_FLAG



,T1.CREATED_ON , T1.CREATED_BY  ,T1.MODIFIED_ON



,T2.SERIAL_CODE 



,T2.ASSET_ALLOCATED



,T2.ACQUISITION_ID, T2.AMC_WARRANTY, T2.AMC_WARRANTY_END_DATE, T2.AMC_WARRANTY_START_DATE



,T2.ASSET_ALLOCATED,T2.ASSET_APPROVED,T2.ASSET_BOE,T2.ASSET_DESCRIPTION,T2.ASSET_ID



,T2.ASSET_LOCATION ,T2.ASSET_MAKE, T2.ASSET_TYPE, T2.BONDED_TYPE,T2.PROJECT_NAME, T2.CATEGORY_CODE,T4.CATEGORY_NAME 



,T2.IsRFIDApproved 



,T3.STORAGE_LOC_NAME



,T3.CMF_GROUP_EMAIL 



,T3.GSG_GROUP_EMAIL



,T4.CATEGORY_NAME



,T5.PROJECT_MANAGER



,T5.PM_EMAIL











 FROM MOVEMENT_TAG_CHECK_Laptop T1 Inner join ASSET_ACQUISITION T2 



 on T1.ASSET_CODE = T2.ASSET_CODE



 Inner join STORAGE_LOCATION_MASTER T3 



 ON T2.LOCATION = T3.STORAGE_LOC_CODE



 INNER JOIN CATEGORY_MASTER T4 on T2.CATEGORY_CODE = T4.CATEGORY_CODE 



 Inner join PROJECT_MASTER  T5 on T2.PROJECT_NAME = T5.PROJECT_CODE  AND T5.LOCATION_CODE = T2.LOCATION 



-- Inner JOIN MOVEMENT_TAG_CHECK T6



 -- on T6.ASSET_CODE =T1.ASSET_CODE AND CAST(T6.CREATED_ON as Date) =CAST(T1.LastTagRead AS Date)



  



  END 

GO
/****** Object:  StoredProcedure [dbo].[USP_UploadBulkAssetAcquisition]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--DROP PROC [USP_UploadBulkAssetAcquisition]



CREATE  Procedure [dbo].[USP_UploadBulkAssetAcquisition]
(
@STORAGE_LOC_CODE varchar(100),
@CATEGORY_CODE varchar(100),
@tblAsset Upload_BULKASSET_ACQUISITION readonly
)
AS 
BEGIN 


SELECT 
IDENTITY (int) AS ID,
  *
	into #BulkAssetTable
	from @tblAsset

	
	
DECLARE @ctr int =1 ;
DECLARE @ENDValue  int= 0 ;
SET @ENDValue = ( SELECT COUNT(*) from @tblAsset) ;






WHILE @ctr <=@ENDValue 
BEGIN 
insert into ASSET_ACQUISITION
(
RUNNING_SERIAL_NO	,
ASSET_CODE	,
ASSET_ID	,
SERIAL_CODE	,
CATEGORY_CODE	,
ASSET_LOCATION	,
PLANT	,
LOCATION	,
CUSTOMER_ORDER_NO	,
PROJECT_NAME	,
SUB_PROJECT_NAME	,
PROJECT_MANAGER	,
COMP_CODE	,
VENDOR_CODE	,
PURCHASED_DATE	,
PURCHASED_AMT	,
CURRENCY	,
TRANSFER_PRICE	,
LOCAL_CURRENCY	,
PO_NUMBER	,
PO_DATE	,
INVOICE_NO	,
SALE_DATE	,
SALE_AMT	,
CREATED_ON	,
ASSET_MAKE	,
MODEL_NAME	,
ASSET_PROCESS	,
SECURITY_CLASSIFICATION	,
ASSET_SIZE	,
ASSET_VLAN	,
ASSET_HDD	,
ASSET_PROCESSOR	,
ASSET_RAM	,
ASSET_IMEI_NO	,
ASSET_PHONE_MEMORY	,
ASSET_SERVICE_PROVIDER	,
ASSET_TYPE	,
ASSET_BOE	,
ASSET_REGISTER_NO	,
BONDED_TYPE	,
BOND_NO	,
CAPITALISED_STATUS	,
VERIFIABLE_STATUS	,
PORT_NO	,
SECURITY_GATE_ENTRY_NO	,
SECURITY_GATE_ENTRY_DATE	,
AMC_WARRANTY_START_DATE	,
AMC_WARRANTY_END_DATE	,
REMARKS	,
AMC_WARRANTY	,
WORKSTATION_NO	,
COST_CENTER_NO	,
COMPANY_NAME	,
DEPARTMENT	,
INVENTORY_NOTE	,
ASSET_DESCRIPTION	,
ASSET_MAIN_TEXT	,
ASSET_DESCRIPTION_1	,
ACCT_DE	,
ROOM	,
BA	,
EX_FIELD1	,
EX_FIELD2	,
EX_FIELD3	,
EX_FIELD4	,
EX_FIELD5	
)
SELECT 
CAST((SELECT  ISNULL(MAX(RUNNING_SERIAL_NO),0)+1 AS RSN FROM ASSET_ACQUISITION WHERE CATEGORY_CODE = @CATEGORY_CODE AND LOCATION=@STORAGE_LOC_CODE) as int),
--CAST((SELECT  ISNULL(MAX(RUNNING_SERIAL_NO),0)+1 AS RSN FROM ASSET_ACQUISITION WHERE CATEGORY_CODE = @CATEGORY_CODE AND LOCATION=@STORAGE_LOC_CODE) ) as varchar(100)),
CAST(LOCATION+'-'+ASSET_TYPE+'-'+ Substring(REPLACE(CATEGORY_CODE,'-00',''),LEN(CATEGORY_CODE) - 2, 2)+ Cast( (SELECT  ISNULL(MAX(RUNNING_SERIAL_NO),0)+1 AS RSN FROM ASSET_ACQUISITION WHERE CATEGORY_CODE = @CATEGORY_CODE AND LOCATION=@STORAGE_LOC_CODE ) as varchar(26)) as varchar(26))	,
FAMS_ID	,
SERIAL_CODE	,
CATEGORY_CODE	,
ASSET_LOCATION	,
PLANT	,
LOCATION	,
CUSTOMER_ORDER_NO	,
PROJECT_NAME	,
SUB_PROJECT_NAME	,
PROJECT_MANAGER	,
COMP_CODE	,
VENDOR_CODE	,
CASE WHEN ISNULL(PURCHASED_DATE,'') ='' then  null else PURCHASED_DATE end,
 CASE WHEN ISNULL(PURCHASED_AMT,'')='' then null else PURCHASED_AMT end	,
CURRENCY	,
CASE WHEN ISNULL(TRANSFER_PRICE ,'') ='' then null else   CAST(TRANSFER_PRICE as decimal(18,2))end,
CASE WHEN ISNULL(LOCAL_CURRENCY,'') ='' then null else CAST(LOCAL_CURRENCY AS decimal(18,2))end,
PO_NUMBER	,
case when  ISNULL(PO_DATE,'')= '' then  null else PO_DATE end ,
INVOICE_NO	,
CASE WHEN  ISNULL(SALE_DATE,'')='' then  null else  SALE_DATE end,
CASE WHEN ISNULL(SALE_AMT,'') ='' then null else  CAST(SALE_AMT as Decimal(18,2)) end 	,
GETDATE(),
ASSET_MAKE	,
MODEL_NAME	,
ASSET_PROCESS	,
SECURITY_CLASSIFICATION	,
ASSET_SIZE	,
ASSET_VLAN	,
ASSET_HDD	,
ASSET_PROCESSOR	,
ASSET_RAM	,
ASSET_IMEI_NO	,
ASSET_PHONE_MEMORY	,
ASSET_SERVICE_PROVIDER	,
ASSET_TYPE	,
ASSET_BOE	,
ASSET_REGISTER_NO	,
BONDED_TYPE	,
BOND_NO	,
CASE WHEN ISNULL(CAPITALISED_STATUS,'') ='' then null else 	CAPITALISED_STATUS end ,
VERIFIABLE_STATUS	,
PORT_NO	,
SECURITY_GATE_ENTRY_NO	,
CASE WHEN ISNULL(SECURITY_GATE_ENTRY_DATE,'')='' then null else  SECURITY_GATE_ENTRY_DATE END	,
CASE WHEN ISNULL(AMC_WARRANTY_START_DATE,'') ='' then  null else AMC_WARRANTY_START_DATE END,
CASE WHEN ISNULL(AMC_WARRANTY_END_DATE,'') ='' then  null else AMC_WARRANTY_END_DATE END,
REMARKS	,
AMC_WARRANTY	,
WORKSTATION_NO	,
COST_CENTER_NO	,
COMPANY_NAME	,
DEPARTMENT	,
INVENTORY_NOTE	,
ASSET_DESCRIPTION	,
ASSET_MAIN_TEXT	,
ASSET_DESCRIPTION_1	,
ACCT_DE_Type_Of_Asset	,
ROOM	,
BA	,
EX_FIELD1	,
EX_FIELD2	,
EX_FIELD3	,
EX_FIELD4	,
EX_FIELD5	
	
FROM  #BulkAssetTable  Where Id = (@ctr);

set @ctr = @ctr +1 ;
END

END 




GO
/****** Object:  StoredProcedure [dbo].[USP_ValidateAsset]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[USP_ValidateAsset]
  @LocationCode varchar(20),
  @UploadAsset UploadAsset  readonly
AS 
BEGIN 


--Select T1.AssetCode  from @UploadAsset T1 INNER JOIN ASSET_ACQUISITION T2
--ON T1.AssetCode = T2.ASSET_CODE
--Where ISNULL(T2.Status,0)=0 ;

Select T1.AssetCode  from @UploadAsset T1  Where  not Exists (Select'X'  from ASSET_ACQUISITION T2
Where  T1.AssetCode = T2.ASSET_CODE AND ISNULL(T2.Status,0)=0 AND LOCATION =@LocationCode
) ;

END





GO
/****** Object:  StoredProcedure [dbo].[ValidateRFID]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[ValidateRFID]
(
  @AssetCode nvarchar(30),@LOCATION_CODE varchar(20),@Ant int
)
AS

BEGIN
	SET NOCOUNT ON;
	
		BEGIN

DECLARE @REQUEST_HDR_ID VARCHAR(20)='';	
DECLARE @LOCATION_TO VARCHAR(10)='';	
DECLARE @LOCATION_FROM VARCHAR(50)='';
DECLARE @MOVE_TAG_ID bigint=0;

		SET @LOCATION_FROM = (SELECT LOCATION from ASSET_ACQUISITION WHERE  ASSET_CODE=@AssetCode);

	 		EXECUTE ud_mRunningSerialNo @LOCATION_CODE,1,'TAG',0,1,@MOVE_TAG_ID OUTPUT

			if EXISTS(SELECT * FROM MOVEMENT_REQUEST_DTL WHERE ASSET_CODE=@AssetCode AND ISNULL(IsRequested,0) =0)
			   BEGIN

			   Select @REQUEST_HDR_ID=REQUEST_HDR_ID from MOVEMENT_REQUEST_DTL WHERE ASSET_CODE=@AssetCode AND ISNULL(IsRequested,0) =0;
			   SELECT @LOCATION_TO=LOCATION_TO from MOVEMENT_REQUEST_HDR WHERE @REQUEST_HDR_ID=REQUEST_HDR_ID
			  --SELECT @LOCATION_CODE=LOCATION_CODE from MOVEMENT_REQUEST_HDR  WHERE REQUEST_HDR_ID=@REQUEST_HDR_ID;

						 if  EXISTS ( SELECT 'X' from MOVEMENT_TAG_CHECK 
									where   ASSET_CODE=@AssetCode  
											AND ISNULL(EMAIL_FLAG,0)=0 
											AND CAST(CREATED_ON AS DATE) =CAST(GETDATE() AS DATE))
						 
						-- EXISTS(SELECT 'X' from MOVEMENT_TAG_CHECK where  ASSET_CODE=@AssetCode AND ISNULL(EMAIL_FLAG,0)=0 )
						 BEGIN
 
						UPDATE MOVEMENT_TAG_CHECK set LOCATION_CODE=@LOCATION_FROM,
						  LOCATION_TO=@LOCATION_TO,STATUS=1, EMAIL_FLAG =0 , MODIFIED_ON=getdate() ,
						  Reader_Location = @LOCATION_CODE
						  where ASSET_CODE=@AssetCode AND ISNULL(EMAIL_FLAG,0)=0 
						        AND  CAST(CREATED_ON AS DATE) =CAST(GETDATE() AS DATE);

						  --update MOVEMENT_TAG_CHECK set LOCATION_CODE=@LOCATION_FROM,
						  --LOCATION_TO=@LOCATION_TO,STATUS=1, EMAIL_FLAG =0 , MODIFIED_ON=getdate() ,
						  --Reader_Location = @LOCATION_CODE
						 
						  --where ASSET_CODE=@AssetCode AND ISNULL(EMAIL_FLAG,0)=0 ;



						   Select 'SUCCESS~' +@AssetCode AS RESULT ;

						 END
						ELSE
						BEGIN
							Insert into MOVEMENT_TAG_CHECK(LOCATION_CODE,MOVE_TAG_ID,ASSET_CODE,LOCATION_TO,EMAIL_FLAG,STATUS, Reader_Location,CREATED_ON,CREATED_BY)
						   VALUES(@LOCATION_FROM,@MOVE_TAG_ID,@AssetCode,@LOCATION_TO,0,1 , @LOCATION_CODE,GETDATE(),'')
						   Select 'SUCCESS~' +@AssetCode AS RESULT
						END
	        END				
		ELSE		
		begin
		   if EXISTS(SELECT * from MOVEMENT_TAG_CHECK
		              where  ASSET_CODE=@AssetCode 
					  AND ISNULL(EMAIL_FLAG,0)=0  
		              AND CAST(CREATED_ON AS DATE) = CAST(GetDATE() AS DATE))
		    BEGIN

			SET @LOCATION_FROM =( SELECT ISNULL(Location,'') from ASSET_ACQUISITION 
			WHERE ASSET_CODE =@AssetCode) ;

			-- for Check Category of asset 
			if EXISTS( select 'x' from ASSET_ACQUISITION T1 
			Inner join CATEGORY_MASTER T2 on T1.CATEGORY_CODE = T2.CATEGORY_CODE
			 WHERE T1.ASSET_CODE =@AssetCode AND UPPER(T2.CATEGORY_NAME) ='LAPTOP')
			 BEGIN 
			 
			 DELETE FROM MOVEMENT_TAG_CHECK_LapTop WHERE Asset_Code = @AssetCode ;

			  Insert into MOVEMENT_TAG_CHECK_LapTop(LOCATION_CODE,MOVE_TAG_ID,ASSET_CODE, EMAIL_FLAG  ,STATUS,CREATED_ON,CREATED_BY,Reader_Location)
			  VALUES(@LOCATION_FROM,@MOVE_TAG_ID,@AssetCode,0,0,GETDATE(),'',@LOCATION_CODE);

			  print 'CALL' ;

			 END 
			 ---------------------
			
		     UPDATE MOVEMENT_TAG_CHECK set LOCATION_CODE=@LOCATION_FROM, STATUS=0, EMAIL_FLAG =0 ,MODIFIED_ON=getdate(),
		      Reader_Location=@LOCATION_CODE
			 where ASSET_CODE=@AssetCode  AND ISNULL(EMAIL_FLAG,0)=0  
			       AND CAST(CREATED_ON AS DATE) = CAST(GetDATE() AS DATE);

			   SELECT 'ERROR~INVALID TAG:'+@AssetCode ;
		    END

		  ELSE	
			BEGIN 

			 Insert into MOVEMENT_TAG_CHECK(LOCATION_CODE,MOVE_TAG_ID,ASSET_CODE,STATUS,CREATED_ON,CREATED_BY,Reader_Location)
			  VALUES(@LOCATION_FROM,@MOVE_TAG_ID,@AssetCode,0,GETDATE(),'',@LOCATION_CODE);
		    
			SELECT 'ERROR~INVALID TAG:'+@AssetCode

			END	

         END
		end

END





GO
/****** Object:  UserDefinedFunction [dbo].[UDF_GETAssetCode]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[UDF_GETAssetCode]
(
	@RequestId varchar(50)
)
RETURNS  varchar(MAX)
AS
BEGIN
 DECLARE @AssetCode varchar(max)  ;
 SELECT @AssetCode =coalesce(@AssetCode + ', ', '')+Asset_Code from [movement_request_dtl] WHERE Request_HDR_ID = @RequestId ;
 RETURN    @AssetCode; 

END


GO
/****** Object:  Table [dbo].[AIS_LABEL_PRINTING]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIS_LABEL_PRINTING](
	[PRN_NAME] [nvarchar](50) NULL,
	[PRN_FILE_DATA] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AlertDisable]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlertDisable](
	[MinCategoryName] [varchar](50) NULL,
	[IsDisable] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ASSET_ACQUISITION]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASSET_ACQUISITION](
	[ACQUISITION_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[RUNNING_SERIAL_NO] [numeric](18, 0) NULL,
	[ASSET_CODE] [nvarchar](50) NOT NULL,
	[TAG_ID] [nvarchar](24) NULL,
	[ASSET_ID] [nvarchar](50) NULL,
	[SERIAL_CODE] [nvarchar](50) NULL,
	[CATEGORY_CODE] [nvarchar](50) NULL,
	[ASSET_LOCATION] [nvarchar](50) NULL,
	[PLANT] [nvarchar](50) NULL,
	[LOCATION] [nvarchar](50) NULL,
	[CUSTOMER_ORDER_NO] [nvarchar](50) NULL,
	[PROJECT_NAME] [nvarchar](50) NULL,
	[SUB_PROJECT_NAME] [nvarchar](50) NULL,
	[PROJECT_MANAGER] [nvarchar](50) NULL,
	[ASSIGN_PRO_TO_EMP] [nvarchar](50) NULL,
	[COMP_CODE] [nchar](10) NULL,
	[VENDOR_CODE] [nvarchar](100) NULL,
	[INSTALLED_DATE] [datetime] NULL,
	[PURCHASED_DATE] [datetime] NULL,
	[PURCHASED_AMT] [decimal](18, 0) NULL,
	[CURRENCY] [nvarchar](20) NULL,
	[TRANSFER_PRICE] [decimal](18, 0) NULL,
	[LOCAL_CURRENCY] [decimal](18, 0) NULL,
	[PO_NUMBER] [nvarchar](50) NULL,
	[PO_DATE] [datetime] NULL,
	[INVOICE_NO] [nvarchar](50) NULL,
	[SALE_DATE] [datetime] NULL,
	[SALE_AMT] [decimal](18, 0) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[ASSET_MAKE] [nvarchar](50) NULL,
	[MODEL_NAME] [nvarchar](50) NULL,
	[ASSET_PROCESS] [nvarchar](50) NULL,
	[SECURITY_CLASSIFICATION] [nvarchar](50) NULL,
	[ASSET_SIZE] [nvarchar](50) NULL,
	[ASSET_VLAN] [nvarchar](50) NULL,
	[ASSET_HDD] [nvarchar](50) NULL,
	[ASSET_PROCESSOR] [nvarchar](50) NULL,
	[ASSET_RAM] [nvarchar](50) NULL,
	[ASSET_IMEI_NO] [nvarchar](50) NULL,
	[ASSET_PHONE_MEMORY] [nvarchar](50) NULL,
	[ASSET_SERVICE_PROVIDER] [nvarchar](50) NULL,
	[ASSET_TYPE] [nvarchar](50) NULL,
	[ASSET_BOE] [nvarchar](50) NULL,
	[ASSET_REGISTER_NO] [nvarchar](50) NULL,
	[BONDED_TYPE] [nvarchar](20) NULL,
	[BOND_NO] [nvarchar](50) NULL,
	[CAPITALISED_STATUS] [nvarchar](50) NULL,
	[VERIFIABLE_STATUS] [nvarchar](20) NULL,
	[PORT_NO] [nvarchar](max) NULL,
	[ASSET_ALLOCATED] [bit] NULL,
	[SOLD_SCRAPPED_STATUS] [nvarchar](20) NULL,
	[SECURITY_GATE_ENTRY_NO] [nvarchar](50) NULL,
	[SECURITY_GATE_ENTRY_DATE] [datetime] NULL,
	[AMC_WARRANTY_START_DATE] [datetime] NULL,
	[AMC_WARRANTY_END_DATE] [datetime] NULL,
	[REMARKS] [nvarchar](1000) NULL,
	[ASSET_APPROVED] [bit] NULL,
	[AMC_WARRANTY] [nvarchar](50) NULL,
	[WORKSTATION_NO] [nvarchar](50) NULL,
	[COST_CENTER_NO] [nvarchar](50) NULL,
	[COMPANY_NAME] [nvarchar](50) NULL,
	[DEPARTMENT] [nvarchar](50) NULL,
	[INVENTORY_NOTE] [nvarchar](50) NULL,
	[ASSET_DESCRIPTION] [nvarchar](200) NULL,
	[ASSET_MAIN_TEXT] [nvarchar](200) NULL,
	[ASSET_DESCRIPTION_1] [nvarchar](200) NULL,
	[ACCT_DE] [nvarchar](50) NULL,
	[ROOM] [nvarchar](50) NULL,
	[BA] [nvarchar](30) NULL,
	[UPDATED_ON] [datetime] NULL,
	[UPDATED_BY] [nvarchar](50) NULL,
	[EX_FIELD1] [nvarchar](100) NULL,
	[EX_FIELD2] [nvarchar](100) NULL,
	[EX_FIELD3] [nvarchar](100) NULL,
	[EX_FIELD4] [nvarchar](50) NULL,
	[EX_FIELD5] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[IsRFIDApproved] [bit] NULL,
	[RFIDApprovedOn] [datetime] NULL,
 CONSTRAINT [PK_ASSET_ACQUISITION] PRIMARY KEY CLUSTERED 
(
	[ASSET_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASSET_ACQUISITION_HISTORY]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ASSET_ACQUISITION_HISTORY](
	[ACQUISITION_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[RUNNING_SERIAL_NO] [numeric](18, 0) NULL,
	[ASSET_CODE] [nvarchar](50) NOT NULL,
	[TAG_ID] [nvarchar](24) NULL,
	[ASSET_ID] [nvarchar](50) NULL,
	[SERIAL_CODE] [nvarchar](50) NULL,
	[CATEGORY_CODE] [nvarchar](50) NULL,
	[ASSET_LOCATION] [nvarchar](50) NULL,
	[PLANT] [nvarchar](50) NULL,
	[LOCATION] [nvarchar](50) NULL,
	[CUSTOMER_ORDER_NO] [nvarchar](50) NULL,
	[PROJECT_NAME] [nvarchar](50) NULL,
	[SUB_PROJECT_NAME] [nvarchar](50) NULL,
	[PROJECT_MANAGER] [nvarchar](50) NULL,
	[ASSIGN_PRO_TO_EMP] [nvarchar](50) NULL,
	[COMP_CODE] [nchar](10) NULL,
	[VENDOR_CODE] [nvarchar](100) NULL,
	[INSTALLED_DATE] [datetime] NULL,
	[PURCHASED_DATE] [datetime] NULL,
	[PURCHASED_AMT] [decimal](18, 0) NULL,
	[CURRENCY] [nvarchar](20) NULL,
	[TRANSFER_PRICE] [decimal](18, 0) NULL,
	[LOCAL_CURRENCY] [decimal](18, 0) NULL,
	[PO_NUMBER] [nvarchar](50) NULL,
	[PO_DATE] [datetime] NULL,
	[INVOICE_NO] [nvarchar](50) NULL,
	[SALE_DATE] [datetime] NULL,
	[SALE_AMT] [decimal](18, 0) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[ASSET_MAKE] [nvarchar](50) NULL,
	[MODEL_NAME] [nvarchar](50) NULL,
	[ASSET_PROCESS] [nvarchar](50) NULL,
	[SECURITY_CLASSIFICATION] [nvarchar](50) NULL,
	[ASSET_SIZE] [nvarchar](50) NULL,
	[ASSET_VLAN] [nvarchar](50) NULL,
	[ASSET_HDD] [nvarchar](50) NULL,
	[ASSET_PROCESSOR] [nvarchar](50) NULL,
	[ASSET_RAM] [nvarchar](50) NULL,
	[ASSET_IMEI_NO] [nvarchar](50) NULL,
	[ASSET_PHONE_MEMORY] [nvarchar](50) NULL,
	[ASSET_SERVICE_PROVIDER] [nvarchar](50) NULL,
	[ASSET_TYPE] [nvarchar](50) NULL,
	[ASSET_BOE] [nvarchar](50) NULL,
	[ASSET_REGISTER_NO] [nvarchar](50) NULL,
	[BONDED_TYPE] [nvarchar](20) NULL,
	[BOND_NO] [nvarchar](50) NULL,
	[CAPITALISED_STATUS] [nvarchar](20) NULL,
	[VERIFIABLE_STATUS] [nvarchar](20) NULL,
	[PORT_NO] [nvarchar](max) NULL,
	[ASSET_ALLOCATED] [bit] NULL,
	[SOLD_SCRAPPED_STATUS] [nvarchar](20) NULL,
	[SECURITY_GATE_ENTRY_NO] [nvarchar](50) NULL,
	[SECURITY_GATE_ENTRY_DATE] [datetime] NULL,
	[AMC_WARRANTY_START_DATE] [datetime] NULL,
	[AMC_WARRANTY_END_DATE] [datetime] NULL,
	[REMARKS] [nvarchar](1000) NULL,
	[ASSET_APPROVED] [bit] NULL,
	[AMC_WARRANTY] [nvarchar](50) NULL,
	[WORKSTATION_NO] [nvarchar](50) NULL,
	[COST_CENTER_NO] [nvarchar](50) NULL,
	[COMPANY_NAME] [nvarchar](50) NULL,
	[DEPARTMENT] [nvarchar](50) NULL,
	[INVENTORY_NOTE] [nvarchar](50) NULL,
	[ASSET_DESCRIPTION] [nvarchar](200) NULL,
	[ASSET_MAIN_TEXT] [nvarchar](200) NULL,
	[ASSET_DESCRIPTION_1] [nvarchar](200) NULL,
	[ACCT_DE] [nvarchar](50) NULL,
	[ROOM] [nvarchar](50) NULL,
	[BA] [nvarchar](30) NULL,
	[UPDATED_ON] [datetime] NULL,
	[UPDATED_BY] [nvarchar](50) NULL,
	[EX_FIELD1] [nvarchar](100) NULL,
	[EX_FIELD2] [nvarchar](100) NULL,
	[EX_FIELD3] [nvarchar](100) NULL,
	[EX_FIELD4] [nvarchar](50) NULL,
	[EX_FIELD5] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[MOVED_ON] [datetime] NULL,
	[MOVED_BY] [varchar](50) NULL,
	[RequestID] [varchar](50) NULL,
	[RequestStatus] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ASSET_ALLOCATION]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASSET_ALLOCATION](
	[ASSET_CODE] [nvarchar](50) NULL,
	[ASSET_ALLOCATION_DATE] [datetime] NULL,
	[REQUESTED_BY] [nvarchar](50) NULL,
	[REQUESTED_BY_ID] [nvarchar](50) NULL,
	[APPROVED_BY] [nvarchar](50) NULL,
	[APPROVED_BY_ID] [nvarchar](50) NULL,
	[ASSET_ALLOCATED_EMP] [nvarchar](50) NULL,
	[ALLOCATED_EMP_ID] [nvarchar](50) NULL,
	[ALLOCATED_DEPARTMENT] [nvarchar](50) NULL,
	[ALLOCATED_PROCESS] [nvarchar](50) NULL,
	[ASSET_LOCATION] [nvarchar](50) NULL,
	[EXPECTED_RTN_DATE] [datetime] NULL,
	[ACTUAL_RTN_DATE] [datetime] NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[PORT_NO] [nvarchar](max) NULL,
	[VLAN] [nvarchar](50) NULL,
	[TICKET_NO] [nvarchar](50) NULL,
	[GATEPASS_NO] [nvarchar](50) NULL,
	[WORKSTATION_NO] [nvarchar](50) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[REMARKS] [nvarchar](1000) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASSET_AMC]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASSET_AMC](
	[AMC_CODE] [nvarchar](50) NOT NULL,
	[AMC_RUNNING_NO] [int] IDENTITY(1,1) NOT NULL,
	[AMC_WARRANTY] [nvarchar](50) NULL,
	[AMC_START_DATE] [datetime] NULL,
	[AMC_END_DATE] [datetime] NULL,
	[ASSET_CODE] [nvarchar](50) NULL,
	[AMC_VALUE] [nvarchar](50) NULL,
	[AMC_VENDOR_CODE] [nvarchar](50) NULL,
	[AMC_DOCUMENT] [nvarchar](max) NULL,
	[AMC_RESP_PERSON] [nvarchar](50) NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[SERIAL_CODE] [nvarchar](50) NULL,
	[ASSET_LOCATION] [nvarchar](50) NULL,
	[ASSET_MAKE] [nvarchar](50) NULL,
	[MODEL_NAME] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASSET_REPLACEMENT]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASSET_REPLACEMENT](
	[ACTIVE_IN_ASSET_CODE] [nvarchar](50) NULL,
	[SERIAL_CODE] [nvarchar](50) NULL,
	[FAULTY_SEC_GE_NO] [nvarchar](50) NULL,
	[FAULTY_SEC_GE_DATE] [datetime] NULL,
	[ACTIVE_SEC_GE_NO] [nvarchar](50) NULL,
	[ACTIVE_SEC_GE_DATE] [datetime] NULL,
	[BONDED_TYPE] [nvarchar](20) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[FAULTY_OUT_SERIAL_CODE] [nvarchar](50) NULL,
	[REMARKS] [nvarchar](1000) NULL,
	[COMP_CODE] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASSET_SOLD_DETAILS]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASSET_SOLD_DETAILS](
	[REFERENCE_INVOICE_NO] [nvarchar](50) NULL,
	[VENDOR_CODE] [nvarchar](50) NULL,
	[CONTACT_NAME] [nvarchar](50) NULL,
	[COMPANY_ADDRESS] [nvarchar](100) NULL,
	[SOLD_DATE] [datetime] NULL,
	[ASSET_CODE] [nvarchar](50) NULL,
	[ASSET_ID] [nvarchar](50) NULL,
	[SERIAL_CODE] [nvarchar](50) NULL,
	[REMARKS] [nvarchar](100) NULL,
	[SOLD_VALUE] [nvarchar](50) NULL,
	[SCRAP_DATE] [datetime] NULL,
	[STATUS] [nvarchar](50) NULL,
	[COMPANY_EMAIL] [nvarchar](50) NULL,
	[COMP_CODE] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASSET_SWAP_HISTORY]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASSET_SWAP_HISTORY](
	[ASSET_CODE1] [nvarchar](50) NULL,
	[SERIAL_CODE1] [nvarchar](50) NULL,
	[LOCATION2] [nvarchar](50) NULL,
	[PROCESS2] [nvarchar](50) NULL,
	[WORKSTATION2] [nvarchar](50) NULL,
	[PORT2] [nvarchar](max) NULL,
	[EMPLOYEE_NAME2] [nvarchar](50) NULL,
	[EMPLOYEE_CODE2] [nvarchar](50) NULL,
	[ASSET_CODE2] [nvarchar](50) NULL,
	[SERIAL_CODE2] [nvarchar](50) NULL,
	[LOCATION1] [nvarchar](50) NULL,
	[PROCESS1] [nvarchar](50) NULL,
	[WORKSTATION1] [nvarchar](50) NULL,
	[PORT1] [nvarchar](max) NULL,
	[EMPLOYEE_NAME1] [nvarchar](50) NULL,
	[EMPLOYEE_CODE1] [nvarchar](50) NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[REMARKS] [nvarchar](1000) NULL,
	[SWAP_DATE] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASSET_TRANSFER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASSET_TRANSFER](
	[ASSET_CODE] [nvarchar](50) NULL,
	[SERIAL_CODE] [nvarchar](50) NULL,
	[MODEL_NAME] [nvarchar](50) NULL,
	[ASSET_PROCESS] [nvarchar](50) NULL,
	[FROM_LOCATION] [nvarchar](50) NULL,
	[TO_LOCATION] [nvarchar](50) NULL,
	[REMARKS] [nvarchar](1000) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[IUT_STATUS] [nvarchar](50) NULL,
	[FROM_WORKSTATION] [nvarchar](50) NULL,
	[TO_WORKSTATION] [nvarchar](50) NULL,
	[FROM_PORT] [nvarchar](max) NULL,
	[TO_PORT] [nvarchar](max) NULL,
	[TRANSFER_DATE] [datetime] NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[TRANSFER_TYPE] [nvarchar](50) NULL,
	[INTER_FROM_LOCATION] [nvarchar](50) NULL,
	[INTER_TO_LOCATION] [nvarchar](50) NULL,
	[INTER_TO_PROCESS] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssetNotification]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssetNotification](
	[RequestId] [varchar](20) NULL,
	[ReqStage] [int] NULL,
	[AlertOn] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CALL_LOG_MGMT]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CALL_LOG_MGMT](
	[CALL_LOG_CODE] [nvarchar](50) NULL,
	[ASSET_CODE] [nvarchar](50) NULL,
	[VENDOR_CODE] [nvarchar](50) NULL,
	[ESCALATION_CODE] [nvarchar](50) NULL,
	[CALL_NO] [nvarchar](50) NULL,
	[CALL_DATE] [datetime] NULL,
	[COMMITMENT_DATE] [datetime] NULL,
	[RESOLVED_STATUS] [nvarchar](50) NULL,
	[RESOLVED_DATE] [datetime] NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[SERIAL_CODE] [nvarchar](50) NULL,
	[CALL_LOG_REMARKS] [nvarchar](500) NULL,
	[VENDOR_CONT_PERSON] [nvarchar](50) NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[RUNNING_SERIAL_NO] [numeric](18, 0) NULL,
	[RESPONDED_DATE] [datetime] NULL,
	[ASSET_MAKE] [nvarchar](50) NULL,
	[MODEL_NAME] [nvarchar](50) NULL,
	[VENDOR_LOCATION] [nvarchar](50) NULL,
	[ENGINEER_NAME] [nvarchar](50) NULL,
	[PART_STATUS] [nvarchar](50) NULL,
	[ACTION_TAKEN] [nvarchar](500) NULL,
	[FRU_NO] [nvarchar](50) NULL,
	[GATEPASS_NO] [nvarchar](50) NULL,
	[REPLACED_SERIAL_NO] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CATEGORY_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORY_MASTER](
	[CATEGORY_CODE] [nvarchar](50) NOT NULL,
	[CATEGORY_NAME] [nvarchar](50) NULL,
	[CATEGORY_TYPE] [nvarchar](50) NULL,
	[PARENT_CATEGORY] [nvarchar](50) NULL,
	[CATEGORY_LEVEL] [int] NULL,
	[ASSET_TYPE] [nvarchar](50) NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[CATEGORY_INITIALS] [char](2) NULL,
	[ACTIVE] [bit] NULL,
	[REMARKS] [nvarchar](500) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
 CONSTRAINT [PK_CATEGORY_MASTER] PRIMARY KEY CLUSTERED 
(
	[CATEGORY_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CITY_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CITY_MASTER](
	[CITY_CODE] [nvarchar](50) NOT NULL,
	[COUNTRY_CODE] [nvarchar](50) NULL,
	[CITY_NAME] [nvarchar](50) NULL,
	[ZIPCODE] [nvarchar](10) NULL,
	[REMARKS] [nvarchar](100) NULL,
	[ACTIVE] [bit] NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
 CONSTRAINT [PK_CITY_MASTER] PRIMARY KEY CLUSTERED 
(
	[CITY_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLEARANCE_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLEARANCE_MASTER](
	[CLEARANCE_CODE] [int] NOT NULL,
	[DESCRIPTION] [varchar](50) NULL,
	[TYPE] [varchar](10) NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [varchar](50) NULL,
 CONSTRAINT [PK_CLEARANCE_MASTER] PRIMARY KEY CLUSTERED 
(
	[CLEARANCE_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CODE_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CODE_MASTER](
	[CODE] [varchar](50) NOT NULL,
	[TYPE] [varchar](50) NULL,
 CONSTRAINT [PK_CODE_MASTER] PRIMARY KEY CLUSTERED 
(
	[CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPANY_LOCATION]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPANY_LOCATION](
	[COMP_CODE] [nvarchar](50) NOT NULL,
	[COMP_NAME] [nvarchar](100) NOT NULL,
	[LOCATION] [nvarchar](50) NOT NULL,
	[REMARKS] [nvarchar](500) NULL,
	[ACTIVE] [bit] NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[COMP_OWNER] [tinyint] NULL,
	[TECHOPS_EMAIL] [nvarchar](50) NULL,
 CONSTRAINT [PK_COMPANY_LOCATION] PRIMARY KEY CLUSTERED 
(
	[COMP_CODE] ASC,
	[COMP_NAME] ASC,
	[LOCATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COMPANY_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPANY_MASTER](
	[COMP_CODE] [nvarchar](50) NOT NULL,
	[PLANT_CODE] [nvarchar](50) NOT NULL,
	[STORAGE_LOC_CODE] [nvarchar](50) NOT NULL,
	[COMP_NAME] [nvarchar](100) NULL,
	[REMARKS] [nvarchar](500) NULL,
	[ACTIVE] [bit] NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[COMP_OWNER] [tinyint] NULL,
 CONSTRAINT [PK_COMPANY_MASTER] PRIMARY KEY CLUSTERED 
(
	[COMP_CODE] ASC,
	[PLANT_CODE] ASC,
	[STORAGE_LOC_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COUNTRY_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNTRY_MASTER](
	[COUNTRY_CODE] [nvarchar](50) NOT NULL,
	[COUNTRY_NAME] [nvarchar](50) NULL,
	[REMARKS] [nvarchar](100) NULL,
	[ACTIVE] [bit] NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
 CONSTRAINT [PK_COUNTRY_MASTER] PRIMARY KEY CLUSTERED 
(
	[COUNTRY_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DEPARTMENT_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT_MASTER](
	[DEPT_CODE] [nvarchar](50) NOT NULL,
	[DEPT_NAME] [nvarchar](50) NULL,
	[REMARKS] [nvarchar](500) NULL,
	[ACTIVE] [bit] NULL,
	[COMP_CODE] [nvarchar](50) NOT NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
 CONSTRAINT [PK_DEPARTMENT_MASTER_1] PRIMARY KEY CLUSTERED 
(
	[DEPT_CODE] ASC,
	[COMP_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DOCUMENT_MANAGEMENT]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENT_MANAGEMENT](
	[SERIAL_NO] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [nvarchar](50) NULL,
	[CATEGORY] [nvarchar](50) NULL,
	[REMARKS] [nvarchar](500) NULL,
	[ATTACH_FILE_NAME] [nvarchar](100) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[COMPANY_NAME] [nvarchar](50) NULL,
 CONSTRAINT [PK_ADD_VIEW_FILES] PRIMARY KEY CLUSTERED 
(
	[SERIAL_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLOYEE_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLOYEE_MASTER](
	[EMPLOYEE_CODE] [nvarchar](50) NOT NULL,
	[EMPLOYEE_NAME] [nvarchar](50) NULL,
	[EMP_LOC_CODE] [nvarchar](50) NULL,
	[EMP_PROJECT_CODE] [nvarchar](50) NULL,
	[EMP_DEPT_CODE] [nvarchar](50) NULL,
	[EMP_REPORTING_TO] [nvarchar](50) NULL,
	[EMP_EMAIL] [nvarchar](50) NULL,
	[EMP_DOJ] [datetime] NULL,
	[EMP_PHONE] [nvarchar](50) NULL,
	[ACTIVE] [bit] NULL,
	[REMARKS] [nvarchar](500) NULL,
	[STORAGE_LOC_CODE] [nvarchar](50) NOT NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[EMP_PROCESS_CODE] [varchar](50) NULL,
 CONSTRAINT [PK_EMPLOYEE_MASTER_1] PRIMARY KEY CLUSTERED 
(
	[EMPLOYEE_CODE] ASC,
	[STORAGE_LOC_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GATEPASS_ASSETS]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GATEPASS_ASSETS](
	[GATEPASS_CODE] [nvarchar](50) NULL,
	[ASSET_CODE] [nvarchar](50) NULL,
	[EXP_RETURN_DATE] [datetime] NULL,
	[TRANSFER_ITEM] [nvarchar](50) NULL,
	[GATEPASS_IN] [nvarchar](50) NULL,
	[GATEPASS_IN_LOC] [nvarchar](50) NULL,
	[GATEPASS_IN_DATE] [datetime] NULL,
	[GATEPASS_IN_BY] [nvarchar](50) NULL,
	[GATEPASS_OUT_LOC] [nvarchar](50) NULL,
	[GATEPASS_OUT_DATE] [datetime] NULL,
	[GATEPASS_OUT_BY] [nvarchar](50) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[COMP_CODE] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GATEPASS_GENERATION]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GATEPASS_GENERATION](
	[GATEPASS_CODE] [nvarchar](50) NULL,
	[RUNNING_SERIAL_NO] [int] IDENTITY(1,1) NOT NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[GATEPASS_DATE] [datetime] NULL,
	[GATEPASS_TYPE] [nvarchar](20) NULL,
	[GATEPASS_VENDOR_CODE] [nvarchar](50) NULL,
	[GATEPASS_EMPLOYEE_CODE] [nvarchar](50) NULL,
	[ASSET_LOCATION] [nvarchar](50) NULL,
	[GATEPASS_BEARER_NAME] [nvarchar](50) NULL,
	[GATEPASS_CARRIER_NAME] [nvarchar](50) NULL,
	[GATEPASS_REMARKS] [nvarchar](500) NULL,
	[GATEPASS_IN_BY] [nvarchar](50) NULL,
	[GATEPASS_IN_DATE] [datetime] NULL,
	[GATEPASS_IN_STATUS] [bit] NULL,
	[GATEPASS_IN_LOC_CODE] [nvarchar](50) NULL,
	[GATEPASS_OUT_BY] [nvarchar](50) NULL,
	[GATEPASS_OUT_DATE] [datetime] NULL,
	[GATEPASS_OUT_LOC_CODE] [nvarchar](50) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[PURPOSE] [nvarchar](500) NULL,
	[APPROVE_GATEPASS] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GENERAL_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENERAL_MASTER](
	[GENERAL_CODE] [int] IDENTITY(1,1) NOT NULL,
	[GENERAL_NAME] [nvarchar](50) NULL,
	[STATE_NAME] [nvarchar](50) NULL,
	[COUNTRY_NAME] [nvarchar](50) NULL,
	[REMARKS] [nvarchar](500) NULL,
	[ACTIVE] [bit] NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GROUP_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GROUP_MASTER](
	[GROUP_CODE] [nvarchar](50) NOT NULL,
	[GROUP_NAME] [nvarchar](100) NULL,
	[REMARKS] [nvarchar](500) NULL,
	[ACTIVE] [bit] NULL,
	[COMP_CODE] [nvarchar](50) NOT NULL,
	[ASSET_TYPE] [nvarchar](50) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
 CONSTRAINT [PK_GROUP_MASTER_1] PRIMARY KEY CLUSTERED 
(
	[GROUP_CODE] ASC,
	[COMP_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GROUP_RIGHTS]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GROUP_RIGHTS](
	[COMP_CODE] [nvarchar](50) NOT NULL,
	[GROUP_CODE] [nvarchar](50) NOT NULL,
	[PAGE_CODE] [int] NOT NULL,
	[PAGE_NAME] [nvarchar](100) NULL,
	[VIEW_RIGHTS] [bit] NULL,
	[SAVE_RIGHTS] [bit] NULL,
	[EDIT_RIGHTS] [bit] NULL,
	[DELETE_RIGHTS] [bit] NULL,
	[EXPORT_RIGHTS] [bit] NULL,
 CONSTRAINT [PK_GROUP_RIGHTS] PRIMARY KEY CLUSTERED 
(
	[COMP_CODE] ASC,
	[GROUP_CODE] ASC,
	[PAGE_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOCATION_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOCATION_MASTER](
	[LOC_CODE] [nvarchar](50) NOT NULL,
	[LOC_NAME] [nvarchar](100) NULL,
	[PARENT_LOC_CODE] [nvarchar](50) NULL,
	[STORAGE_LOC_CODE] [nvarchar](50) NOT NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](500) NULL,
	[LOC_LEVEL] [int] NULL,
	[ACTIVE] [bit] NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
 CONSTRAINT [PK_LOCATION_MASTER_1] PRIMARY KEY CLUSTERED 
(
	[LOC_CODE] ASC,
	[STORAGE_LOC_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MOVEMENT_REQUEST_CLEARANCE]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVEMENT_REQUEST_CLEARANCE](
	[LOCATION_CODE] [varchar](10) NOT NULL,
	[CLEARANCE_CODE] [int] NOT NULL,
	[REQUEST_HDR_ID] [varchar](20) NOT NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [varchar](50) NULL,
	[Remarks] [varchar](100) NULL,
 CONSTRAINT [PK_MOVEMENT_REQUEST_CLEARANCE] PRIMARY KEY CLUSTERED 
(
	[LOCATION_CODE] ASC,
	[CLEARANCE_CODE] ASC,
	[REQUEST_HDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MOVEMENT_REQUEST_DOC]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVEMENT_REQUEST_DOC](
	[REQUEST_DOC_ID] [bigint] NOT NULL,
	[REQUEST_HDR_ID] [varchar](15) NOT NULL,
	[DOC_TYPE] [int] NULL,
	[DOC_NAME] [varchar](50) NOT NULL,
	[Remark] [varchar](50) NULL,
 CONSTRAINT [PK_MOVEMENT_REQUEST_DOC_1] PRIMARY KEY CLUSTERED 
(
	[REQUEST_DOC_ID] ASC,
	[REQUEST_HDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MOVEMENT_REQUEST_DTL]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVEMENT_REQUEST_DTL](
	[REQUEST_DTL_ID] [bigint] NOT NULL,
	[REQUEST_HDR_ID] [varchar](15) NOT NULL,
	[ASSET_CODE] [varchar](50) NULL,
	[IsRequested] [bit] NULL,
 CONSTRAINT [PK_MOVEMENT_REQUEST_DTL_1] PRIMARY KEY CLUSTERED 
(
	[REQUEST_DTL_ID] ASC,
	[REQUEST_HDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MOVEMENT_REQUEST_HDR]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVEMENT_REQUEST_HDR](
	[LOCATION_CODE] [varchar](10) NOT NULL,
	[REQUEST_HDR_ID] [varchar](15) NOT NULL,
	[IS_PERMANENT] [bit] NULL,
	[TRANSFER_TO] [varchar](50) NULL,
	[IS_INTERUNIT] [bit] NULL,
	[LOCATION_TO] [varchar](10) NULL,
	[PROJECT_CODE] [varchar](50) NULL,
	[RECEIVER_EMAIL] [varchar](50) NULL,
	[GST_NO] [varchar](50) NULL,
	[PROJECT_COST_CENTRE] [varchar](50) NULL,
	[PM_APPROVE] [bit] NULL,
	[PM_REMARKS] [varchar](50) NULL,
	[CMF_APPROVE] [bit] NULL,
	[CMF_REMARKS] [varchar](50) NULL,
	[IS_CLEARANCE] [bit] NULL,
	[REC_CLEARANCE] [bit] NULL,
	[STAGE] [int] NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [varchar](50) NULL,
	[PM_APPROVED_ON] [datetime] NULL,
	[PM_APPROVED_BY] [varchar](50) NULL,
	[CMF_APPROVED_ON] [datetime] NULL,
	[CMF_APPROVED_BY] [varchar](50) NULL,
	[CLEARANCE_ON] [datetime] NULL,
	[CLEARANCE_BY] [varchar](50) NULL,
	[GATEPASS_ON] [datetime] NULL,
	[GATEPASS_BY] [varchar](50) NULL,
	[RECEIVED_ON] [datetime] NULL,
	[RECEIVED_BY] [varchar](50) NULL,
	[REC_CLEARANCE_ON] [datetime] NULL,
	[REC_CLEARANCE_BY] [varchar](50) NULL,
	[MAIL_STATUS] [bit] NULL,
	[IsReceived] [bit] NULL,
 CONSTRAINT [PK_MOVEMENT_REQUEST_HDR] PRIMARY KEY CLUSTERED 
(
	[LOCATION_CODE] ASC,
	[REQUEST_HDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MOVEMENT_TAG_CHECK]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVEMENT_TAG_CHECK](
	[LOCATION_CODE] [varchar](10) NOT NULL,
	[MOVE_TAG_ID] [bigint] NOT NULL,
	[ASSET_CODE] [varchar](50) NULL,
	[LOCATION_TO] [varchar](10) NULL,
	[STATUS] [bit] NULL,
	[EMAIL_FLAG] [bit] NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [varchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[Reader_Location] [varchar](20) NULL,
 CONSTRAINT [PK_MOVEMENT_TAG_CHECK] PRIMARY KEY CLUSTERED 
(
	[LOCATION_CODE] ASC,
	[MOVE_TAG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MOVEMENT_TAG_CHECK_LapTop]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVEMENT_TAG_CHECK_LapTop](
	[LOCATION_CODE] [varchar](10) NOT NULL,
	[MOVE_TAG_ID] [bigint] NOT NULL,
	[ASSET_CODE] [varchar](50) NULL,
	[LOCATION_TO] [varchar](10) NULL,
	[STATUS] [bit] NULL,
	[EMAIL_FLAG] [bit] NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [varchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[Reader_Location] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MovementRequestConfig]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovementRequestConfig](
	[RequestStage] [varchar](50) NULL,
	[RequestOrder] [int] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mRunningSerialNo]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mRunningSerialNo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SiteID] [varchar](10) NOT NULL,
	[TransType] [varchar](50) NOT NULL,
	[LineNo] [varchar](10) NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[MonthWise] [bit] NULL,
	[SerialNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_mRunningSerialNo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PAGE_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAGE_MASTER](
	[PAGE_CODE] [int] IDENTITY(1,1) NOT NULL,
	[PAGE_NAME] [nvarchar](50) NULL,
	[PAGE_DESCRIPTION] [nvarchar](500) NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[CREATED_BY] [nchar](10) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
 CONSTRAINT [PK_PAGE_MASTER] PRIMARY KEY CLUSTERED 
(
	[PAGE_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PLANT_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLANT_MASTER](
	[PLANT_CODE] [nvarchar](50) NOT NULL,
	[CITY_CODE] [nvarchar](50) NULL,
	[PLANT_NAME] [nvarchar](50) NULL,
	[REMARKS] [nvarchar](100) NULL,
	[ACTIVE] [bit] NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
 CONSTRAINT [PK_PLANT_MASTER] PRIMARY KEY CLUSTERED 
(
	[PLANT_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRINTING_LOG]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRINTING_LOG](
	[ASSET_CODE] [nvarchar](50) NULL,
	[SERIAL_CODE] [nvarchar](50) NULL,
	[ASSET_ID] [nvarchar](50) NULL,
	[ASSET_LOCATION] [nvarchar](50) NULL,
	[PO_NUMBER] [nvarchar](50) NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[PRINT_COUNT] [int] NULL,
	[PORT_NO] [nvarchar](50) NULL,
	[MODEL_NAME] [nvarchar](50) NULL,
	[ASSET_MAKE] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROCESS_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROCESS_MASTER](
	[PROCESS_CODE] [nvarchar](50) NOT NULL,
	[PROCESS_NAME] [nvarchar](50) NULL,
	[PROCESS_OWNER] [nvarchar](50) NULL,
	[ACTIVE] [bit] NULL,
	[COMP_CODE] [nvarchar](50) NOT NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[DEPT_CODE] [nvarchar](50) NULL,
 CONSTRAINT [PK_PROCESS_MASTER_1] PRIMARY KEY CLUSTERED 
(
	[PROCESS_CODE] ASC,
	[COMP_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROJECT_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROJECT_MASTER](
	[LOCATION_CODE] [varchar](50) NOT NULL,
	[PROJECT_CODE] [varchar](50) NOT NULL,
	[PROJECT_NAME] [varchar](50) NULL,
	[REMARKS] [varchar](100) NULL,
	[PROJECT_MANAGER] [varchar](50) NULL,
	[PM_EMAIL] [varchar](50) NULL,
	[ACTIVE] [bit] NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [varchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[MODIFIED_BY] [varchar](50) NULL,
	[DEPT_CODE] [varchar](20) NULL,
	[COMP_CODE] [varchar](20) NULL,
 CONSTRAINT [PK_PROJECT_MASTER] PRIMARY KEY CLUSTERED 
(
	[PROJECT_CODE] ASC,
	[LOCATION_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RECONCILED_ASSET_CODES]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECONCILED_ASSET_CODES](
	[ASSET_CODE] [nvarchar](50) NULL,
	[RECONCILE_DATE] [datetime] NULL,
	[RECONCILE_TIME] [datetime] NULL,
	[RECONCILED_BY] [nvarchar](50) NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[LOC_CODE] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RECONCILED_ASSET_CODES_RFID]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECONCILED_ASSET_CODES_RFID](
	[ASSET_CODE] [nvarchar](50) NULL,
	[RECONCILE_DATE] [datetime] NULL,
	[RECONCILE_TIME] [datetime] NULL,
	[RECONCILED_BY] [nvarchar](50) NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[LOC_CODE] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RECONCILED_SERIAL_CODES]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECONCILED_SERIAL_CODES](
	[SERIAL_CODES] [nvarchar](50) NULL,
	[RECONCILE_DATE] [datetime] NULL,
	[RECONCILE_TIME] [datetime] NULL,
	[RECONCILED_BY] [nvarchar](50) NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[LOC_CODE] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RFID_READER_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RFID_READER_MASTER](
	[READER_IP] [nvarchar](15) NOT NULL,
	[ANT_PORT] [int] NOT NULL,
	[ANT_POWER] [int] NULL,
	[SERVER_PORT] [int] NULL,
	[STAGE_ID] [int] NULL,
	[STAGE_NAME] [nvarchar](50) NULL,
	[ACTIVE] [bit] NULL,
	[READ_DURATION] [int] NULL,
 CONSTRAINT [PK_LOCATION_MASTER] PRIMARY KEY CLUSTERED 
(
	[READER_IP] ASC,
	[ANT_PORT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STORAGE_LOCATION_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORAGE_LOCATION_MASTER](
	[UNIQUE_ADDRESS_ID] [int] IDENTITY(1,1) NOT NULL,
	[STORAGE_LOC_CODE] [nvarchar](50) NOT NULL,
	[STORAGE_LOC_NAME] [nvarchar](50) NULL,
	[CMF_GROUP_EMAIL] [nvarchar](50) NULL,
	[GSG_GROUP_EMAIL] [nvarchar](50) NULL,
	[REMARKS] [nvarchar](50) NULL,
	[ACTIVE] [bit] NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[SAP_LOC_CODE] [varchar](4) NULL,
 CONSTRAINT [PK_STORAGE_LOCATION_MASTER] PRIMARY KEY CLUSTERED 
(
	[UNIQUE_ADDRESS_ID] ASC,
	[STORAGE_LOC_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUB_PROJECT_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUB_PROJECT_MASTER](
	[SUB_PROJECT_CODE] [varchar](50) NOT NULL,
	[SUB_PROJECT_NAME] [varchar](50) NULL,
	[PROJECT_CODE] [varchar](50) NOT NULL,
	[PROJECT_MANAGER] [varchar](50) NULL,
	[LOCATION_CODE] [varchar](50) NOT NULL,
	[ASSIGN_EMPLOYEE] [varchar](50) NULL,
	[REMARKS] [varchar](100) NULL,
	[ACTIVE] [bit] NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [varchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[MODIFIED_BY] [varchar](50) NULL,
 CONSTRAINT [PK_SUB_PROJECT_MASTER] PRIMARY KEY CLUSTERED 
(
	[SUB_PROJECT_CODE] ASC,
	[PROJECT_CODE] ASC,
	[LOCATION_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYSTEM_HEALTH]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSTEM_HEALTH](
	[READER_IP] [nvarchar](15) NOT NULL,
	[PING_STATUS] [nvarchar](100) NULL,
	[APPLICATION_STATUS] [nvarchar](100) NULL,
	[APPLICATION_EXCEPTION] [nvarchar](200) NULL,
	[LAST_UPDATED] [datetime] NULL,
 CONSTRAINT [PK_SYSTEM_HEALTH] PRIMARY KEY CLUSTERED 
(
	[READER_IP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnAuthrizeLaptopSendMailHistory]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnAuthrizeLaptopSendMailHistory](
	[LOCATION_CODE] [varchar](10) NOT NULL,
	[MOVE_TAG_ID] [bigint] NOT NULL,
	[ASSET_CODE] [varchar](50) NULL,
	[LOCATION_TO] [varchar](10) NULL,
	[STATUS] [bit] NULL,
	[EMAIL_FLAG] [bit] NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [varchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[Reader_Location] [varchar](20) NULL,
	[SendOn] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USER_ACCOUNTS]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_ACCOUNTS](
	[USER_ID] [nvarchar](50) NOT NULL,
	[USER_NAME] [nvarchar](100) NULL,
	[PASSWORD] [nvarchar](50) NULL,
	[USER_EMAIL] [nvarchar](100) NULL,
	[COMP_CODE] [nvarchar](50) NOT NULL,
	[LOCATION_CODE] [nvarchar](50) NULL,
	[GROUP_CODE] [nvarchar](50) NULL,
	[ACTIVE] [bit] NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[TECHOPS_EMAIL] [nvarchar](50) NULL,
	[USER_SESSION_ID] [nvarchar](100) NULL,
 CONSTRAINT [PK_USER_ACCOUNTS_1] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC,
	[COMP_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VENDOR_ESCALATION_MATRIX]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDOR_ESCALATION_MATRIX](
	[VEM_CODE] [int] IDENTITY(1,1) NOT NULL,
	[VENDOR_CODE] [nvarchar](50) NULL,
	[VEM_PERSON_NAME] [nvarchar](50) NULL,
	[VEM_EMAIL] [nvarchar](500) NULL,
	[VEM_MOBILE] [nvarchar](500) NULL,
	[VEM_ADDRESS] [nvarchar](100) NULL,
	[VEM_LEVEL] [nvarchar](50) NULL,
	[VEM_REMARKS] [nvarchar](500) NULL,
	[VEM_SUPPORT_TYPE] [nvarchar](50) NULL,
	[VEM_ACTIVE] [bit] NULL,
	[COMP_CODE] [nvarchar](50) NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
 CONSTRAINT [PK_VENDOR_ESCALATION_MATRIX] PRIMARY KEY CLUSTERED 
(
	[VEM_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VENDOR_MASTER]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDOR_MASTER](
	[VENDOR_CODE] [nvarchar](50) NOT NULL,
	[VENDOR_NAME] [nvarchar](50) NULL,
	[VENDOR_ADDRESS] [nvarchar](100) NULL,
	[VENDOR_COUNTRY] [nvarchar](50) NULL,
	[VENDOR_STATE] [nvarchar](50) NULL,
	[VENDOR_CITY] [nvarchar](50) NULL,
	[VENDOR_PIN] [nvarchar](50) NULL,
	[VENDOR_CONT_PERSON] [nvarchar](50) NULL,
	[VENDOR_PHONE] [nvarchar](50) NULL,
	[VENDOR_EMAIL] [nvarchar](50) NULL,
	[REMARKS] [nvarchar](500) NULL,
	[ACTIVE] [bit] NULL,
	[COMP_CODE] [nvarchar](50) NOT NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [nvarchar](50) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[CST_NO] [nvarchar](50) NULL,
	[SERVICE_TAX_NO] [nvarchar](50) NULL,
	[PAN_NO] [nvarchar](50) NULL,
	[TIN_NO] [nvarchar](50) NULL,
	[ALTERNATE_CONT_NO] [nvarchar](50) NULL,
 CONSTRAINT [PK_VENDOR_MASTER] PRIMARY KEY CLUSTERED 
(
	[VENDOR_CODE] ASC,
	[COMP_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_GetPrintGatepassDetails]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_GetPrintGatepassDetails]
AS
SELECT     dbo.GATEPASS_GENERATION.GATEPASS_CODE, dbo.ASSET_ACQUISITION.ASSET_CODE, dbo.ASSET_ACQUISITION.SERIAL_CODE, 
                      dbo.ASSET_ACQUISITION.ASSET_MAKE, dbo.ASSET_ACQUISITION.MODEL_NAME, dbo.GATEPASS_GENERATION.GATEPASS_DATE, 
                      dbo.GATEPASS_ASSETS.EXP_RETURN_DATE, dbo.GATEPASS_GENERATION.GATEPASS_TYPE, dbo.GATEPASS_GENERATION.ASSET_LOCATION, 
                      dbo.GATEPASS_GENERATION.GATEPASS_BEARER_NAME, dbo.GATEPASS_GENERATION.GATEPASS_CARRIER_NAME, dbo.GATEPASS_GENERATION.CREATED_BY, 
                      dbo.GATEPASS_GENERATION.CREATED_ON, CASE WHEN NULLIF (GATEPASS_GENERATION.GATEPASS_EMPLOYEE_CODE, '') IS NOT NULL 
                      THEN GATEPASS_GENERATION.GATEPASS_EMPLOYEE_CODE + '; ' + EMPLOYEE_MASTER.EMPLOYEE_NAME ELSE GATEPASS_GENERATION.GATEPASS_VENDOR_CODE
                       + '; ' + VENDOR_MASTER.VENDOR_NAME END AS GATE_PASS_FOR, dbo.GATEPASS_GENERATION.GATEPASS_VENDOR_CODE, 
                      dbo.GATEPASS_GENERATION.GATEPASS_EMPLOYEE_CODE, dbo.GATEPASS_GENERATION.PURPOSE, dbo.GATEPASS_GENERATION.APPROVE_GATEPASS, 
                      dbo.GATEPASS_GENERATION.COMP_CODE
FROM         dbo.GATEPASS_GENERATION INNER JOIN
                      dbo.GATEPASS_ASSETS ON dbo.GATEPASS_GENERATION.GATEPASS_CODE = dbo.GATEPASS_ASSETS.GATEPASS_CODE AND 
                      dbo.GATEPASS_GENERATION.COMP_CODE = dbo.GATEPASS_ASSETS.COMP_CODE INNER JOIN
                      dbo.ASSET_ACQUISITION ON dbo.GATEPASS_ASSETS.ASSET_CODE = dbo.ASSET_ACQUISITION.ASSET_CODE AND 
                      dbo.GATEPASS_GENERATION.COMP_CODE = dbo.ASSET_ACQUISITION.COMP_CODE LEFT OUTER JOIN
                      dbo.VENDOR_MASTER ON dbo.GATEPASS_GENERATION.COMP_CODE = dbo.VENDOR_MASTER.COMP_CODE AND 
                      dbo.GATEPASS_GENERATION.GATEPASS_VENDOR_CODE = dbo.VENDOR_MASTER.VENDOR_CODE LEFT OUTER JOIN
                      dbo.EMPLOYEE_MASTER ON dbo.GATEPASS_GENERATION.COMP_CODE = dbo.EMPLOYEE_MASTER.COMP_CODE AND 
                      dbo.GATEPASS_GENERATION.GATEPASS_EMPLOYEE_CODE = dbo.EMPLOYEE_MASTER.EMPLOYEE_CODE








GO
/****** Object:  View [dbo].[vw_ProjectSubProject]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ProjectSubProject]
AS 
SELECT LOCATION_CODE , PROJECT_CODE , PROJECT_NAME, PROJECT_MANAGER,PM_EMAIL  from PROJECT_MASTER 
UNION 
SELECT LOCATION_CODE , SUB_PROJECT_CODE, SUB_PROJECT_NAME, PROJECT_MANAGER , PROJECT_MANAGER from SUB_PROJECT_MASTER 


GO
/****** Object:  View [dbo].[vw_ReportAssetAllocation]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ReportAssetAllocation]
AS
SELECT     dbo.COMPANY_MASTER.COMP_NAME, dbo.ASSET_ALLOCATION.ASSET_CODE, CONVERT(VARCHAR, dbo.ASSET_ALLOCATION.ASSET_ALLOCATION_DATE, 105) 
                      AS ASSET_ALLOCATION_DATE, dbo.ASSET_ACQUISITION.ASSET_ALLOCATED, dbo.EMPLOYEE_MASTER.EMPLOYEE_NAME, dbo.LOCATION_MASTER.LOC_NAME, 
                      CONVERT(VARCHAR, dbo.ASSET_ALLOCATION.EXPECTED_RTN_DATE, 105) AS EXPECTED_RTN_DATE, CONVERT(VARCHAR, 
                      dbo.ASSET_ALLOCATION.ACTUAL_RTN_DATE, 105) AS ACTUAL_RTN_DATE, dbo.CATEGORY_MASTER.CATEGORY_NAME, dbo.CATEGORY_MASTER.ASSET_TYPE, 
                      dbo.ASSET_ALLOCATION.ASSET_ALLOCATED_EMP, dbo.CATEGORY_MASTER.CATEGORY_CODE, 
                      dbo.ASSET_ALLOCATION.ASSET_ALLOCATION_DATE AS ALLOCATION_DATE, dbo.ASSET_ALLOCATION.ASSET_LOCATION
FROM         dbo.ASSET_ALLOCATION INNER JOIN
                      dbo.LOCATION_MASTER ON dbo.ASSET_ALLOCATION.ASSET_LOCATION = dbo.LOCATION_MASTER.LOC_CODE INNER JOIN
                      dbo.EMPLOYEE_MASTER ON dbo.ASSET_ALLOCATION.ASSET_ALLOCATED_EMP = dbo.EMPLOYEE_MASTER.EMPLOYEE_CODE AND 
                      dbo.LOCATION_MASTER.COMP_CODE = dbo.EMPLOYEE_MASTER.COMP_CODE INNER JOIN
                      dbo.ASSET_ACQUISITION ON dbo.ASSET_ALLOCATION.ASSET_CODE = dbo.ASSET_ACQUISITION.ASSET_CODE INNER JOIN
                      dbo.CATEGORY_MASTER ON dbo.ASSET_ACQUISITION.CATEGORY_CODE = dbo.CATEGORY_MASTER.CATEGORY_CODE INNER JOIN
                      dbo.COMPANY_MASTER ON dbo.ASSET_ALLOCATION.COMP_CODE = dbo.COMPANY_MASTER.COMP_CODE








GO
/****** Object:  View [dbo].[vw_ReportAssetTracking]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ReportAssetTracking]
AS
SELECT     dbo.ASSET_ACQUISITION.ASSET_CODE, dbo.ASSET_ACQUISITION.SERIAL_CODE, dbo.ASSET_ACQUISITION.ASSET_MAKE, dbo.ASSET_ACQUISITION.MODEL_NAME, 
                      dbo.ASSET_ACQUISITION.ASSET_TYPE, dbo.CATEGORY_MASTER.CATEGORY_NAME, dbo.LOCATION_MASTER.LOC_NAME, dbo.COMPANY_MASTER.COMP_NAME, 
                      dbo.VENDOR_MASTER.VENDOR_NAME, CONVERT(VARCHAR, dbo.ASSET_ACQUISITION.INSTALLED_DATE, 105) AS INSTALLED_DATE, CONVERT(VARCHAR, 
                      dbo.ASSET_ACQUISITION.PURCHASED_DATE, 105) AS PURCHASED_DATE, dbo.ASSET_ACQUISITION.PURCHASED_AMT, dbo.ASSET_ACQUISITION.PO_NUMBER, 
                      CONVERT(VARCHAR, dbo.ASSET_ACQUISITION.PO_DATE, 105) AS PO_DATE, dbo.ASSET_ACQUISITION.INVOICE_NO, dbo.ASSET_ACQUISITION.ASSET_ALLOCATED, 
                      dbo.ASSET_ACQUISITION.CATEGORY_CODE, dbo.ASSET_ACQUISITION.ASSET_LOCATION
FROM         dbo.ASSET_ACQUISITION INNER JOIN
                      dbo.CATEGORY_MASTER ON dbo.ASSET_ACQUISITION.CATEGORY_CODE = dbo.CATEGORY_MASTER.CATEGORY_CODE INNER JOIN
                      dbo.LOCATION_MASTER ON dbo.ASSET_ACQUISITION.ASSET_LOCATION = dbo.LOCATION_MASTER.LOC_CODE INNER JOIN
                      dbo.VENDOR_MASTER ON dbo.ASSET_ACQUISITION.VENDOR_CODE = dbo.VENDOR_MASTER.VENDOR_CODE INNER JOIN
                      dbo.COMPANY_MASTER ON dbo.ASSET_ACQUISITION.COMP_CODE = dbo.COMPANY_MASTER.COMP_CODE








GO
/****** Object:  View [dbo].[vw_ReportGatePass]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ReportGatePass]
AS
SELECT     dbo.GATEPASS_GENERATION.GATEPASS_CODE, dbo.GATEPASS_GENERATION.COMP_CODE, CONVERT(VARCHAR, dbo.GATEPASS_GENERATION.GATEPASS_DATE, 
                      103) AS GATEPASS_DATE, dbo.GATEPASS_GENERATION.GATEPASS_TYPE, CONVERT(VARCHAR, NULLIF (dbo.GATEPASS_ASSETS.EXP_RETURN_DATE, N''), 103) 
                      AS EXP_RETURN_DATE, dbo.ASSET_ACQUISITION.ASSET_CODE, dbo.ASSET_ACQUISITION.SERIAL_CODE, dbo.GATEPASS_GENERATION.ASSET_LOCATION, 
                      dbo.GATEPASS_GENERATION.GATEPASS_BEARER_NAME, dbo.GATEPASS_GENERATION.GATEPASS_CARRIER_NAME, 
                      CASE WHEN NULLIF (GATEPASS_GENERATION.GATEPASS_EMPLOYEE_CODE, '') IS NOT NULL 
                      THEN GATEPASS_GENERATION.GATEPASS_EMPLOYEE_CODE + '; ' + EMPLOYEE_MASTER.EMPLOYEE_NAME ELSE GATEPASS_GENERATION.GATEPASS_VENDOR_CODE
                       + '; ' + VENDOR_MASTER.VENDOR_NAME END AS GATEPASS_FOR, dbo.GATEPASS_ASSETS.GATEPASS_IN_LOC, CONVERT(VARCHAR, 
                      dbo.GATEPASS_ASSETS.GATEPASS_IN_DATE, 103) AS GATEPASS_IN_DATE, dbo.GATEPASS_ASSETS.GATEPASS_IN_BY, 
                      dbo.GATEPASS_ASSETS.GATEPASS_OUT_LOC, CONVERT(VARCHAR, dbo.GATEPASS_ASSETS.GATEPASS_OUT_DATE, 103) AS GATEPASS_OUT_DATE, 
                      dbo.GATEPASS_ASSETS.GATEPASS_OUT_BY, dbo.GATEPASS_GENERATION.GATEPASS_DATE AS GP_DATE, 
                      dbo.GATEPASS_ASSETS.EXP_RETURN_DATE AS EXP_RTN_DATE
FROM         dbo.GATEPASS_GENERATION INNER JOIN
                      dbo.GATEPASS_ASSETS ON dbo.GATEPASS_GENERATION.GATEPASS_CODE = dbo.GATEPASS_ASSETS.GATEPASS_CODE AND 
                      dbo.GATEPASS_GENERATION.COMP_CODE = dbo.GATEPASS_ASSETS.COMP_CODE INNER JOIN
                      dbo.ASSET_ACQUISITION ON dbo.GATEPASS_ASSETS.ASSET_CODE = dbo.ASSET_ACQUISITION.ASSET_CODE LEFT OUTER JOIN
                      dbo.EMPLOYEE_MASTER ON dbo.GATEPASS_GENERATION.COMP_CODE = dbo.EMPLOYEE_MASTER.COMP_CODE AND 
                      dbo.GATEPASS_GENERATION.GATEPASS_EMPLOYEE_CODE = dbo.EMPLOYEE_MASTER.EMPLOYEE_CODE LEFT OUTER JOIN
                      dbo.VENDOR_MASTER ON dbo.GATEPASS_GENERATION.COMP_CODE = dbo.VENDOR_MASTER.COMP_CODE AND 
                      dbo.GATEPASS_GENERATION.GATEPASS_VENDOR_CODE = dbo.VENDOR_MASTER.VENDOR_CODE








GO
/****** Object:  View [dbo].[vw_UserGroupRights]    Script Date: 12-10-2018 8:50:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_UserGroupRights]
AS
SELECT     dbo.GROUP_MASTER.GROUP_NAME, dbo.USER_ACCOUNTS.USER_ID, dbo.USER_ACCOUNTS.USER_NAME, dbo.USER_ACCOUNTS.PASSWORD, 
                      dbo.USER_ACCOUNTS.ACTIVE, dbo.USER_ACCOUNTS.LOCATION_CODE, dbo.USER_ACCOUNTS.GROUP_CODE, dbo.USER_ACCOUNTS.COMP_CODE, 
                      dbo.GROUP_RIGHTS.PAGE_CODE, dbo.GROUP_RIGHTS.PAGE_NAME, dbo.GROUP_RIGHTS.VIEW_RIGHTS, dbo.GROUP_RIGHTS.SAVE_RIGHTS, 
                      dbo.GROUP_RIGHTS.EDIT_RIGHTS, dbo.GROUP_RIGHTS.DELETE_RIGHTS, dbo.GROUP_RIGHTS.EXPORT_RIGHTS, 
                      dbo.GROUP_MASTER.ASSET_TYPE
FROM         dbo.GROUP_MASTER INNER JOIN
                      dbo.GROUP_RIGHTS ON dbo.GROUP_MASTER.GROUP_CODE = dbo.GROUP_RIGHTS.GROUP_CODE AND 
                      dbo.GROUP_MASTER.COMP_CODE = dbo.GROUP_RIGHTS.COMP_CODE INNER JOIN
                      dbo.USER_ACCOUNTS ON dbo.GROUP_MASTER.GROUP_CODE = dbo.USER_ACCOUNTS.GROUP_CODE AND 
                      dbo.GROUP_MASTER.COMP_CODE = dbo.USER_ACCOUNTS.COMP_CODE INNER JOIN
                      dbo.COMPANY_MASTER ON dbo.USER_ACCOUNTS.COMP_CODE = dbo.COMPANY_MASTER.COMP_CODE








GO
INSERT [dbo].[AIS_LABEL_PRINTING] ([PRN_NAME], [PRN_FILE_DATA]) VALUES (N'AIS_PRN_Old', N'^XA
^SZ2^JMA
^MCY^PMN
^PW386
~JSN
^JZY
^LH0,0^LRN
^XZ
^XA
^FT22,77
^CI0
^A0N,23,20^FDASSET.ID^FS
^FT106,76
^A0N,23,28^FD{ASSET_CODE}^FS
^FT22,116
^A0N,23,20^FDDESC^FS
^FT106,116
^A0N,23,28^FD{CATEGORY_NAME}^FS
^FT22,155
^A0N,23,20^FDSR. NO.^FS
^FT106,155
^A0N,23,28^FD{SERIAL_CODE}^FS
^FT293,44
^A0N,28,38^FDBCIL^FS
^FO279,81
^BQN,2,4^FDLA,{SERIAL_CODE}^FS
^FO9,8
^GB374,187,3^FS
^FT22,44
^A0N,28,38^FDMobiVUE-ATS^FS
^PQ1,0,1,Y
^XZ
')
INSERT [dbo].[AIS_LABEL_PRINTING] ([PRN_NAME], [PRN_FILE_DATA]) VALUES (N'AIS_PRN_OLD12-OCT-2018', N'CT~~CD,~CC^~CT~
^XA~TA000~JSN^LT0^MNW^MTT^PON^PMN^LH0,0^JMA^PR2,2~SD27^JUS^LRN^CI0^XZ
^XA
^MMT
^PW560
^LL0160
^LS0
^FO32,0^GFA,01536,01536,00012,:Z64:
eJzt0jtOxDAQANCxImGqdYsQItRbIG6Qo3AFyi0QMaLZIiJXWFEhGq6Qz0XCDVy6iDLM2PGn2AIJQbUTKXlKxjOeJACn+OPYJgo00QqX6ApRByPiFNO7OiwQCygbbEDMa+4zJXOhgkyFdEWWSLUF2lI7z3SaVcct0XJfSWsUNywRX6K7OnoDqjerqcRXcmGiN8LY4LpPxsnmflxNs+fe/cAxP6/D3h3rW2b7oX0myyntP5+rHDPH2ekik8G9t2CdXEFynfmJvdfne62Bv5Fq59KOCzywX28v34dPuGE38gIG4VappsjM92H1WXK7lGaATjub68MAvXNzxzmj9xW79d5wzSPm+lLp0HdcvHUc8XfunO+d0QdbruaHhaf7/4W3+51h+/ZBxwFO8V/xDXTC0b4=:8699
^BY108,108^FT397,141^BXN,3,200,0,0,1,~
^FH\^FD90024612\0D\0AIT\0D\0AS3-12TH-FLOOR\0D\0ABDC\0D\0ASJS3\0D\0ACISCO\0D\0AYES\0D\0ACISCO IP PHONE 7960G,GLOBAL SPARE^FS
^FT134,47^A0N,23,24^FH\^FDMIN:000001^FS
^FT134,111^A0N,23,24^FH\^FDLOCATION: {LOCATION}^FS
^FT134,79^A0N,23,24^FH\^FDASSET #: {ASSET_CODE}^FS
^FT134,141^A0N,20,19^FH\^FDPROJ: {PROJECT_NAME}^FS
^FT49,123^A0N,17,33^FH\^FDCMF^FS
^PQ1,0,1,Y^XZ')
INSERT [dbo].[AIS_LABEL_PRINTING] ([PRN_NAME], [PRN_FILE_DATA]) VALUES (N'AIS_PRN', N'CT~~CD,~CC^~CT~
^XA~TA000~JSN^LT0^MNW^MTT^PON^PMN^LH0,0^JMA^PR2,2~SD30^JUS^LRN^CI0^XZ
^XA
^MMT
^PW479
^LL0144
^LS0
^FO0,0^GFA,01536,01536,00016,:Z64:
eJzt071qwzAQAOBTVZzFoDFLqPogJl76UBlC4k5ZCn0lg0299CEMfQGBC9FgfJUcSzqpJS10zW0f57vTjwVwizmwiihRRS5xjD9HpOQTHGkDrkH2oRc2Pax8wyPiMxyYpr041sQTCFT7hQzNbIl662wbyfNYOttBDzBJms+hlDRvKkRFvRGvkafVqSL1DE9dTfL8m5vUTU3qr+V/6mfmRfMBw3rm9RXJetP9QCno/gEOyf73iXfb2I/+vJeLGuO8v6/FXCXunQcUutO8dv7gObQbBt7sBdoMYt8FD9ac5G09NQrV8vvg3ObzUJ9ZF3F9dsVm3lsRPLB36HTwZWN/t/ol//lkwx33/P8jkvd1sX8O9r2YCO9xfbau4Rb/jy/G1q1f:03E7
^FT27,125^A0N,16,21^FH\^FDMIN:^FS
^FT74,125^A0N,16,24^FH\^FD{VAR1}^FS
^FT26,99^A0N,14,14^FH\^FDCentral Materials Function (CMF)^FS
^PQ1,0,1,Y^XZ')
INSERT [dbo].[AIS_LABEL_PRINTING] ([PRN_NAME], [PRN_FILE_DATA]) VALUES (N'AIS_PRN_Old', N'^XA
^SZ2^JMA
^MCY^PMN
^PW386
~JSN
^JZY
^LH0,0^LRN
^XZ
^XA
^FT22,77
^CI0
^A0N,23,20^FDASSET.ID^FS
^FT106,76
^A0N,23,28^FD{ASSET_CODE}^FS
^FT22,116
^A0N,23,20^FDDESC^FS
^FT106,116
^A0N,23,28^FD{CATEGORY_NAME}^FS
^FT22,155
^A0N,23,20^FDSR. NO.^FS
^FT106,155
^A0N,23,28^FD{SERIAL_CODE}^FS
^FT293,44
^A0N,28,38^FDBCIL^FS
^FO279,81
^BQN,2,4^FDLA,{SERIAL_CODE}^FS
^FO9,8
^GB374,187,3^FS
^FT22,44
^A0N,28,38^FDMobiVUE-ATS^FS
^PQ1,0,1,Y
^XZ
')
INSERT [dbo].[AIS_LABEL_PRINTING] ([PRN_NAME], [PRN_FILE_DATA]) VALUES (N'AIS_PRN_OLD12-OCT-2018', N'CT~~CD,~CC^~CT~
^XA~TA000~JSN^LT0^MNW^MTT^PON^PMN^LH0,0^JMA^PR2,2~SD27^JUS^LRN^CI0^XZ
^XA
^MMT
^PW560
^LL0160
^LS0
^FO32,0^GFA,01536,01536,00012,:Z64:
eJzt0jtOxDAQANCxImGqdYsQItRbIG6Qo3AFyi0QMaLZIiJXWFEhGq6Qz0XCDVy6iDLM2PGn2AIJQbUTKXlKxjOeJACn+OPYJgo00QqX6ApRByPiFNO7OiwQCygbbEDMa+4zJXOhgkyFdEWWSLUF2lI7z3SaVcct0XJfSWsUNywRX6K7OnoDqjerqcRXcmGiN8LY4LpPxsnmflxNs+fe/cAxP6/D3h3rW2b7oX0myyntP5+rHDPH2ekik8G9t2CdXEFynfmJvdfne62Bv5Fq59KOCzywX28v34dPuGE38gIG4VappsjM92H1WXK7lGaATjub68MAvXNzxzmj9xW79d5wzSPm+lLp0HdcvHUc8XfunO+d0QdbruaHhaf7/4W3+51h+/ZBxwFO8V/xDXTC0b4=:8699
^BY108,108^FT397,141^BXN,3,200,0,0,1,~
^FH\^FD90024612\0D\0AIT\0D\0AS3-12TH-FLOOR\0D\0ABDC\0D\0ASJS3\0D\0ACISCO\0D\0AYES\0D\0ACISCO IP PHONE 7960G,GLOBAL SPARE^FS
^FT134,47^A0N,23,24^FH\^FDMIN:000001^FS
^FT134,111^A0N,23,24^FH\^FDLOCATION: {LOCATION}^FS
^FT134,79^A0N,23,24^FH\^FDASSET #: {ASSET_CODE}^FS
^FT134,141^A0N,20,19^FH\^FDPROJ: {PROJECT_NAME}^FS
^FT49,123^A0N,17,33^FH\^FDCMF^FS
^PQ1,0,1,Y^XZ')
INSERT [dbo].[AIS_LABEL_PRINTING] ([PRN_NAME], [PRN_FILE_DATA]) VALUES (N'AIS_PRN', N'CT~~CD,~CC^~CT~
^XA~TA000~JSN^LT0^MNW^MTT^PON^PMN^LH0,0^JMA^PR2,2~SD30^JUS^LRN^CI0^XZ
^XA
^MMT
^PW479
^LL0144
^LS0
^FO0,0^GFA,01536,01536,00016,:Z64:
eJzt071qwzAQAOBTVZzFoDFLqPogJl76UBlC4k5ZCn0lg0299CEMfQGBC9FgfJUcSzqpJS10zW0f57vTjwVwizmwiihRRS5xjD9HpOQTHGkDrkH2oRc2Pax8wyPiMxyYpr041sQTCFT7hQzNbIl662wbyfNYOttBDzBJms+hlDRvKkRFvRGvkafVqSL1DE9dTfL8m5vUTU3qr+V/6mfmRfMBw3rm9RXJetP9QCno/gEOyf73iXfb2I/+vJeLGuO8v6/FXCXunQcUutO8dv7gObQbBt7sBdoMYt8FD9ac5G09NQrV8vvg3ObzUJ9ZF3F9dsVm3lsRPLB36HTwZWN/t/ol//lkwx33/P8jkvd1sX8O9r2YCO9xfbau4Rb/jy/G1q1f:03E7
^FT27,125^A0N,16,21^FH\^FDMIN:^FS
^FT74,125^A0N,16,24^FH\^FD{VAR1}^FS
^FT26,99^A0N,14,14^FH\^FDCentral Materials Function (CMF)^FS
^PQ1,0,1,Y^XZ')
INSERT [dbo].[AlertDisable] ([MinCategoryName], [IsDisable]) VALUES (N'LAPTOP', 1)
SET IDENTITY_INSERT [dbo].[ASSET_ACQUISITION] ON 

INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84580 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'02-IT-HO-000001', NULL, N'90024612', N'INM08111R6Z', N'IT-HO-00-00', N'01-S1-1F-DW-00-00', N'BDC', N'02', N'', N'REFID', N'', N'Chandrappa', N'Chandrappa', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'9000002292', CAST(0x0000000000000000 AS DateTime), N'025/2004;26.05.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A973011D1773 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'IMPBU2#17/09-10;20.04.09', N'SEZ', N'', N'NCAP', N'VER', N'79', 1, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'ggg', 0, N'', N'ABCD', N'', N'Wipro Limited', N'CMF', N'9000002292', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84581 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'02-IT-HO-000002', NULL, N'90024616', N'INM0811QGB', N'IT-HO-00-00', N'02-S3-PF-DW-0T-00', N'BDC', N'02', N'', N'REFID', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'025/2004;26.05.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A9770133079D AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'5555', 1, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'bgggg', 0, N'', N'555', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84582 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'02-IT-HO-000003', NULL, N'90024617', N'INM081227LV', N'IT-HW-00-00', N'02-S3-10-DW-00-00', N'BDC', N'01', N'', N'CISCO', N'', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A9A0006E13DF AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2#17/09-10;20.04.09', 0, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84583 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'02-IT-HO-000004', NULL, N'90024620', N'INM08121UAG', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97701396509 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2#17/09-10;20.04.09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84584 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'02-IT-HO-000005', NULL, N'90024621', N'INM08121UQV', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/08/2007;14.05.07', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013A342A AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2# 52/09-10 26-09-09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, 1, CAST(0x0000A9AB00C78A6E AS DateTime))
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84585 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'02-IT-HO-000006', NULL, N'90024622', N'INM08111R6J', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013AD800 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'U2/133/2009-10', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, 1, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84586 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'02-IT-HO-000007', NULL, N'90024623', N'INM0811235H', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(3968297 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(3968297 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'025/2004;26.05.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013BB39C AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2#17/09-10;20.04.09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, 1, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84587 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'02-IT-HO-000008', NULL, N'90030599', N'INM0822152K', N'IT-HW-CE-00', N'02-S3-10-AW-00-00', N'BDC', N'02', N'', N'CISCO', N'', N'Chandrappa', N'', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/68/04;19.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A9A10092965A AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2#17/09-10;20.04.09', 0, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'12 SP+IP PHONES (INCL P/W SUPPLIES & LIC', N'12 SP+IP PHONES (INCL P/W SUPPLIES & LIC', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84588 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'02-IT-HO-000009', NULL, N'90030546', N'INM082214WH', N'IT-HW-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/68/04;19.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A9A10095D6A0 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2#17/09-10;20.04.09', 0, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'12 SP+IP PHONES (INCL P/W SUPPLIES & LIC', N'12 SP+IP PHONES (INCL P/W SUPPLIES & LIC', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84607 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'02-IT-HW-000010', NULL, N'123', N'123', N'IT-HW-00-00', N'02-S3-10-DW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISICOEDVTLAB', N'lakshman.chandrappa@wipro', N'', N'WT        ', N'', CAST(0x0000A9AE00000000 AS DateTime), CAST(0x0000A9AC00000000 AS DateTime), CAST(12 AS Decimal(18, 0)), N'EUR', CAST(11 AS Decimal(18, 0)), CAST(132 AS Decimal(18, 0)), N'po12345', CAST(0x0000A9AE00000000 AS DateTime), N'inv123456', CAST(0x0000A9AE00000000 AS DateTime), CAST(123 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A9AE0152B39B AS DateTime), N'12345', N'12345', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'1111', N'12345', N'YES', N'', N'CAP', N'VER', N'12345', 0, NULL, N'123', CAST(0x0000A9AA00000000 AS DateTime), CAST(0x0000A9AE00000000 AS DateTime), CAST(0x0000A9AE00000000 AS DateTime), N'', 0, N'AMC', N'123', N'12345', N'Wipro Limited', N'WPROJ', N'12345', N'ssss', N'sssss', N'', N'1104', N'111', N'1111', NULL, NULL, N'', N'', N'', N'', N'', NULL, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84592 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'02-IT-LT-000001', NULL, N'90335905', N'R8LTA7E', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'Chandrappa', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97B0124DCBD AS DateTime), N'Lenovo', N'Laptop', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'NCAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'', N'Wipro Limited', N'CMF', N'', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, 1, CAST(0x0000A9AB00C78A6E AS DateTime))
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84594 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'02-IT-LT-000002', NULL, N'90335905', N'R8LTA7E', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(4590 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'9000024288', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C456 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#167/2014', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000024288', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'9000024288', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, 1, CAST(0x0000A9AB00C78A6E AS DateTime))
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84595 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'02-IT-LT-000003', NULL, N'90335906', N'R8LTA7H', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(4590 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'9000024288', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C456 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#167/2014', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000024288', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'9000024288', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, 1, CAST(0x0000A9AB00C78A6E AS DateTime))
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84596 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'02-IT-LT-000004', NULL, N'90335908', N'R8LTA7K', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(4590 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'9000024288', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C456 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#167/2014', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000024288', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'9000024288', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, 1, CAST(0x0000A9AB00C78A6E AS DateTime))
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84597 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'02-IT-LT-000005', NULL, N'90287575', N'R8KVA4D', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(74435 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'96', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C456 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#96/11-12', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000020338', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'96', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84598 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'02-IT-LT-000006', NULL, N'90287576', N'R8KVA4M', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(74435 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'96', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C457 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#96/11-12', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000020338', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'96', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84599 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'02-IT-LT-000007', NULL, N'90287577', N'R8LTA7N', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(74435 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'96', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C457 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#96/11-12', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000020338', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'96', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84600 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'02-IT-LT-000008', NULL, N'90287578', N'R8KVA4A', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(74435 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'96', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C457 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#96/11-12', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000020338', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'96', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84601 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'02-IT-LT-000009', NULL, N'90401842', N'PF0XQ8L9', N'IT-HW-CE-00', N'02-S3-10-AW-00-00', N'BDC', N'02', N'', N'CISCO', N'', N'Chandrappa', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000A8BE00000000 AS DateTime), CAST(89225 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(89225 AS Decimal(18, 0)), N'9000029071', CAST(0x0000A8BE00000000 AS DateTime), N'6140919479', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A9A10096CECD AS DateTime), N'Lenovo', N'Laptop1', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'IMPU2B#267/17-18', N'SEZ', N'', N'NCAP', N'VER', N'8080', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 0, N'NONE', N'NA', N'T7015', N'Wipro Limited', N'CMF', N'9000029071', N'NOTEBOOK TP T470 16G 256 W10P', N'NOTEBOOK TP T470 16G 256 W10P', N'', N'8900', N'Cisco', N'T101', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84602 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'02-IT-LT-000010', NULL, N'90401843', N'PF0XQ8MV', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(89225 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(89225 AS Decimal(18, 0)), N'9000029071', CAST(0x0000000000000000 AS DateTime), N'6140919479', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'SJS3User2', CAST(0x0000A98101390185 AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'IMPU2B#267/17-18', N'SEZ', N'', N'NCAP', N'VER', N'8080', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 0, N'NONE', N'', N'T7015', N'Wipro Limited', N'CMF', N'9000029071', N'NOTEBOOK TP T470 16G 256 W10P', N'NOTEBOOK TP T470 16G 256 W10P', N'', N'8900', N'Cisco', N'T101', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84603 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), N'02-IT-LT-000011', NULL, N'90401844', N'PF0XQAN0', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(89225 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(89225 AS Decimal(18, 0)), N'9000029071', CAST(0x0000000000000000 AS DateTime), N'6140919479', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'SJS3User2', CAST(0x0000A981013A30F0 AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'IMPU2B#267/17-18', N'YES', N'', N'NCAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 0, N'NONE', N'', N'', N'Wipro Limited', N'CMF', N'9000029071', N'NOTEBOOK TP T470 16G 256 W10P', N'NOTEBOOK TP T470 16G 256 W10P', N'', N'8900', N'Cisco', N'T101', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84604 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), N'02-IT-LT-000012', NULL, N'90401845', N'PF0XQANG', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(89225 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(89225 AS Decimal(18, 0)), N'9000029071', CAST(0x0000000000000000 AS DateTime), N'6140919479', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'SJS3User2', CAST(0x0000A981013B5C9D AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'IMPU2B#267/17-18', N'SEZ', N'', N'NCAP', N'VER', N'8080', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 0, N'NONE', N'', N'', N'Wipro Limited', N'CMF', N'9000029071', N'NOTEBOOK TP T470 16G 256 W10P', N'NOTEBOOK TP T470 16G 256 W10P', N'', N'8900', N'Cisco', N'T101', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84606 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), N'02-IT-LT-000013', NULL, N'90401846', N'PF0XQARZ', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'histephe@cisco.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(89225 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(89225 AS Decimal(18, 0)), N'9000029071', CAST(0x0000000000000000 AS DateTime), N'', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'SJS3User2', CAST(0x0000A98200EB9407 AS DateTime), N'Lenovo', N'Laptop', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'IMPU2B#267/17-18', N'SEZ', N'', N'CAP', N'VER', N'8080', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 0, N'NONE', N'', N'', N'Wipro Limited', N'CMF', N'9000029071', N'NOTEBOOK TP T470 16G 256 W10P', N'NOTEBOOK TP T470 16G 256 W10P', N'', N'8900', N'CISCO', N'T101', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84605 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'02-IT-NE-000001', NULL, N'90408077', N'NA', N'IT-HW-NE-00', N'02-S3-11-BW-00-00', N'BDC', N'02', N'1000005389', N'CISCO', N'CISCO', N'histephe@cisco.com', N'CHANDRAPPA', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(56738 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(56738 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'GSA20417392', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sjs3user3', CAST(0x0000A98200D7DB91 AS DateTime), N'SFP CISCO', N'TRANSCRIVER', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'IMPU2B#089/18-19', N'SEZ', N'', N'NCAP', N'VER', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 0, N'', N'', N'T7015', N'Wipro Limited', N'CMF', N'9000029490', N'100GBASE SR4 QSFP TRANSCRIVER', N'100GBASE SR4 QSFP TRANSCRIVER', N'', N'8900', N'CISCO', N'T101', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [IsRFIDApproved], [RFIDApprovedOn]) VALUES (CAST(84593 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'02-IT-OS-000003', NULL, N'90274898', N'N/A', N'IT-HW-OS-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'chalaksh@cisco.com', N'btelang@cisco.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(175824 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00B523CE AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'IM PRITECH B#25/11-12', N'', N'', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'', N'WIPRO', N'', N'CSM', N'AIR-AP1242AG-A-K9/802.11 A/G NON- MODULAR IOS AP F', N'AIR-AP1242AG-A-K9/802.11 A/G NON- MODULAR IOS AP F', N'25', N'8900', N'', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ASSET_ACQUISITION] OFF
SET IDENTITY_INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ON 

INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(30 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A94C00000000 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(31 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-TG-000001', NULL, N'115051018', N'MY41155183', N'IT-RF-TG-00', N'ECS1-3F-00-00-00-00', N'CODC', N'ECS1', N'', N'RBS', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6B00000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'$', CAST(5 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F4300000000 AS DateTime), N'ABC129', CAST(0x00009F5800000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08EC AS DateTime), N'HP', N'OPTIPLEX796', N'', N'', N'', N'10.11.12.19', N'', N'', N'', N'', N'', N'HP', N'IT', N'', N'', N'YES', N'IMPU2B#021/12-13', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(0x0000A3AA00000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'SALES', N'', N'34901A - Armature Multiplexer Module for', N'34901A - Armature Multiplexer Module for', N'', N'1104', N'CISCO', N'T102', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A94C00000000 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(39 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A953011D3AB3 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(40 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'ECS1-IT-DT-000002', NULL, N'90303627', N'PBXRFEN', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6700000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'INR', CAST(20 AS Decimal(18, 0)), CAST(1164000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3F00000000 AS DateTime), N'ABC125', CAST(0x00009F5400000000 AS DateTime), CAST(58300 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08DB AS DateTime), N'DELL', N'OPTIPLEX792', N'', N'A', N'', N'10.11.12.15', N'1', N'I9', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'YES', N'IMPBU2B#106/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(0x0000A3A600000000 AS DateTime), N'', 1, N'WARRANTY', N'', N'FF', N'WIPRO', N'BPO', N'', N'9000023044', N'OPTIXIAXM12-02,CHASSIS,12-SLOT,XM FORM', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A953011D3AB3 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(42 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'ECS1-IT-DT-000002', NULL, N'90303627', N'PBXRFEN', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6700000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'INR', CAST(20 AS Decimal(18, 0)), CAST(1164000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3F00000000 AS DateTime), N'ABC125', CAST(0x00009F5400000000 AS DateTime), CAST(58300 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08DB AS DateTime), N'DELL', N'OPTIPLEX792', N'', N'A', N'', N'10.11.12.15', N'1', N'I9', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'YES', N'IMPBU2B#106/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(0x0000A3A600000000 AS DateTime), N'', 1, N'WARRANTY', N'', N'FF', N'WIPRO', N'BPO', N'', N'9000023044', N'OPTIXIAXM12-02,CHASSIS,12-SLOT,XM FORM', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95400A501DC AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(43 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95400AC1700 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(44 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'ECS1-IT-DT-000002', NULL, N'90303627', N'PBXRFEN', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6700000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'INR', CAST(20 AS Decimal(18, 0)), CAST(1164000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3F00000000 AS DateTime), N'ABC125', CAST(0x00009F5400000000 AS DateTime), CAST(58300 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08DB AS DateTime), N'DELL', N'OPTIPLEX792', N'', N'A', N'', N'10.11.12.15', N'1', N'I9', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'YES', N'IMPBU2B#106/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(0x0000A3A600000000 AS DateTime), N'', 1, N'WARRANTY', N'', N'FF', N'WIPRO', N'BPO', N'', N'9000023044', N'OPTIXIAXM12-02,CHASSIS,12-SLOT,XM FORM', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95400AFBA9E AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(45 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A94F00000000 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(46 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95400C7BED9 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(28 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', NULL, CAST(0x0000A94B00C9A621 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(29 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-TG-000001', NULL, N'115051018', N'MY41155183', N'IT-RF-TG-00', N'ECS1-3F-00-00-00-00', N'CODC', N'ECS1', N'', N'RBS', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6B00000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'$', CAST(5 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F4300000000 AS DateTime), N'ABC129', CAST(0x00009F5800000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08EC AS DateTime), N'HP', N'OPTIPLEX796', N'', N'', N'', N'10.11.12.19', N'', N'', N'', N'', N'', N'HP', N'IT', N'', N'', N'YES', N'IMPU2B#021/12-13', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(0x0000A3AA00000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'SALES', N'', N'34901A - Armature Multiplexer Module for', N'34901A - Armature Multiplexer Module for', N'', N'1104', N'CISCO', N'T102', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A94B00D2983E AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(32 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-TG-000001', NULL, N'115051018', N'MY41155183', N'IT-RF-TG-00', N'ECS1-3F-00-00-00-00', N'CODC', N'ECS1', N'', N'RBS', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6B00000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'$', CAST(5 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F4300000000 AS DateTime), N'ABC129', CAST(0x00009F5800000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08EC AS DateTime), N'HP', N'OPTIPLEX796', N'', N'', N'', N'10.11.12.19', N'', N'', N'', N'', N'', N'HP', N'IT', N'', N'', N'YES', N'IMPU2B#021/12-13', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(0x0000A3AA00000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'SALES', N'', N'34901A - Armature Multiplexer Module for', N'34901A - Armature Multiplexer Module for', N'', N'1104', N'CISCO', N'T102', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95000000000 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(33 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(34 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(35 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(36 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(37 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(38 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(41 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'ECS1-IT-DT-000002', NULL, N'90303627', N'PBXRFEN', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6700000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'INR', CAST(20 AS Decimal(18, 0)), CAST(1164000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3F00000000 AS DateTime), N'ABC125', CAST(0x00009F5400000000 AS DateTime), CAST(58300 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08DB AS DateTime), N'DELL', N'OPTIPLEX792', N'', N'A', N'', N'10.11.12.15', N'1', N'I9', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'YES', N'IMPBU2B#106/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(0x0000A3A600000000 AS DateTime), N'', 1, N'WARRANTY', N'', N'FF', N'WIPRO', N'BPO', N'', N'9000023044', N'OPTIXIAXM12-02,CHASSIS,12-SLOT,XM FORM', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A95800000000 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(47 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'ECS1-IT-DT-000002', NULL, N'90303627', N'PBXRFEN', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6700000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'INR', CAST(20 AS Decimal(18, 0)), CAST(1164000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3F00000000 AS DateTime), N'ABC125', CAST(0x00009F5400000000 AS DateTime), CAST(58300 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08DB AS DateTime), N'DELL', N'OPTIPLEX792', N'', N'A', N'', N'10.11.12.15', N'1', N'I9', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'YES', N'IMPBU2B#106/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(0x0000A3A600000000 AS DateTime), N'', 1, N'WARRANTY', N'', N'FF', N'WIPRO', N'BPO', N'', N'9000023044', N'OPTIXIAXM12-02,CHASSIS,12-SLOT,XM FORM', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95400CEBCFC AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(48 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'02-IT-LT-000001', NULL, N'90335905', N'R8LTA7E', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'Chandrappa', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97B0124DCBD AS DateTime), N'Lenovo', N'Laptop', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'NCAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'', N'Wipro Limited', N'CMF', N'', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E00761C3C AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(49 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'02-IT-LT-000002', NULL, N'90335905', N'R8LTA7E', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(4590 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'9000024288', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C456 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#167/2014', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000024288', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'9000024288', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E00761C3C AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(50 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'02-IT-LT-000003', NULL, N'90335906', N'R8LTA7H', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(4590 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'9000024288', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C456 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#167/2014', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000024288', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'9000024288', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E00761C3C AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(51 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'02-IT-LT-000004', NULL, N'90335908', N'R8LTA7K', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(4590 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'9000024288', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C456 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#167/2014', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000024288', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'9000024288', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E00761C3C AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(56 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'02-IT-HO-000005', NULL, N'90024621', N'INM08121UQV', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/08/2007;14.05.07', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013A342A AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2# 52/09-10 26-09-09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E0137F4FE AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(57 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'02-IT-HO-000006', NULL, N'90024622', N'INM08111R6J', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013AD800 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'U2/133/2009-10', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E0137F4FE AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(62 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'02-IT-HO-000007', NULL, N'90024623', N'INM0811235H', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(3968297 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(3968297 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'025/2004;26.05.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013BB39C AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2#17/09-10;20.04.09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E013DDB2B AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(52 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'02-IT-HO-000003', NULL, N'90024617', N'INM081227LV', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013817BC AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2#17/09-10;20.04.09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E008069F0 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(53 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'02-IT-HO-000004', NULL, N'90024620', N'INM08121UAG', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97701396509 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2#17/09-10;20.04.09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E008069F0 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(54 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'02-IT-HO-000005', NULL, N'90024621', N'INM08121UQV', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/08/2007;14.05.07', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013A342A AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2# 52/09-10 26-09-09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E012DFA4E AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(55 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'02-IT-HO-000006', NULL, N'90024622', N'INM08111R6J', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013AD800 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'U2/133/2009-10', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E012DFA4E AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(58 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'02-IT-HO-000005', NULL, N'90024621', N'INM08121UQV', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/08/2007;14.05.07', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013A342A AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2# 52/09-10 26-09-09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E01396DA0 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(59 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'02-IT-HO-000006', NULL, N'90024622', N'INM08111R6J', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013AD800 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'U2/133/2009-10', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E01396DA0 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(60 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'02-IT-HO-000005', NULL, N'90024621', N'INM08121UQV', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/08/2007;14.05.07', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013A342A AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2# 52/09-10 26-09-09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E013B9517 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(61 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'02-IT-HO-000006', NULL, N'90024622', N'INM08111R6J', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013AD800 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'U2/133/2009-10', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E013B9517 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(30 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A94C00000000 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(31 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-TG-000001', NULL, N'115051018', N'MY41155183', N'IT-RF-TG-00', N'ECS1-3F-00-00-00-00', N'CODC', N'ECS1', N'', N'RBS', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6B00000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'$', CAST(5 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F4300000000 AS DateTime), N'ABC129', CAST(0x00009F5800000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08EC AS DateTime), N'HP', N'OPTIPLEX796', N'', N'', N'', N'10.11.12.19', N'', N'', N'', N'', N'', N'HP', N'IT', N'', N'', N'YES', N'IMPU2B#021/12-13', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(0x0000A3AA00000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'SALES', N'', N'34901A - Armature Multiplexer Module for', N'34901A - Armature Multiplexer Module for', N'', N'1104', N'CISCO', N'T102', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A94C00000000 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(39 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A953011D3AB3 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(40 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'ECS1-IT-DT-000002', NULL, N'90303627', N'PBXRFEN', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6700000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'INR', CAST(20 AS Decimal(18, 0)), CAST(1164000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3F00000000 AS DateTime), N'ABC125', CAST(0x00009F5400000000 AS DateTime), CAST(58300 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08DB AS DateTime), N'DELL', N'OPTIPLEX792', N'', N'A', N'', N'10.11.12.15', N'1', N'I9', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'YES', N'IMPBU2B#106/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(0x0000A3A600000000 AS DateTime), N'', 1, N'WARRANTY', N'', N'FF', N'WIPRO', N'BPO', N'', N'9000023044', N'OPTIXIAXM12-02,CHASSIS,12-SLOT,XM FORM', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A953011D3AB3 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(42 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'ECS1-IT-DT-000002', NULL, N'90303627', N'PBXRFEN', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6700000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'INR', CAST(20 AS Decimal(18, 0)), CAST(1164000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3F00000000 AS DateTime), N'ABC125', CAST(0x00009F5400000000 AS DateTime), CAST(58300 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08DB AS DateTime), N'DELL', N'OPTIPLEX792', N'', N'A', N'', N'10.11.12.15', N'1', N'I9', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'YES', N'IMPBU2B#106/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(0x0000A3A600000000 AS DateTime), N'', 1, N'WARRANTY', N'', N'FF', N'WIPRO', N'BPO', N'', N'9000023044', N'OPTIXIAXM12-02,CHASSIS,12-SLOT,XM FORM', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95400A501DC AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(43 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95400AC1700 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(44 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'ECS1-IT-DT-000002', NULL, N'90303627', N'PBXRFEN', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6700000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'INR', CAST(20 AS Decimal(18, 0)), CAST(1164000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3F00000000 AS DateTime), N'ABC125', CAST(0x00009F5400000000 AS DateTime), CAST(58300 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08DB AS DateTime), N'DELL', N'OPTIPLEX792', N'', N'A', N'', N'10.11.12.15', N'1', N'I9', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'YES', N'IMPBU2B#106/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(0x0000A3A600000000 AS DateTime), N'', 1, N'WARRANTY', N'', N'FF', N'WIPRO', N'BPO', N'', N'9000023044', N'OPTIXIAXM12-02,CHASSIS,12-SLOT,XM FORM', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95400AFBA9E AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(45 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A94F00000000 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(46 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95400C7BED9 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(28 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', NULL, CAST(0x0000A94B00C9A621 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(29 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-TG-000001', NULL, N'115051018', N'MY41155183', N'IT-RF-TG-00', N'ECS1-3F-00-00-00-00', N'CODC', N'ECS1', N'', N'RBS', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6B00000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'$', CAST(5 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F4300000000 AS DateTime), N'ABC129', CAST(0x00009F5800000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08EC AS DateTime), N'HP', N'OPTIPLEX796', N'', N'', N'', N'10.11.12.19', N'', N'', N'', N'', N'', N'HP', N'IT', N'', N'', N'YES', N'IMPU2B#021/12-13', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(0x0000A3AA00000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'SALES', N'', N'34901A - Armature Multiplexer Module for', N'34901A - Armature Multiplexer Module for', N'', N'1104', N'CISCO', N'T102', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A94B00D2983E AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(32 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-TG-000001', NULL, N'115051018', N'MY41155183', N'IT-RF-TG-00', N'ECS1-3F-00-00-00-00', N'CODC', N'ECS1', N'', N'RBS', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6B00000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'$', CAST(5 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F4300000000 AS DateTime), N'ABC129', CAST(0x00009F5800000000 AS DateTime), CAST(4000 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08EC AS DateTime), N'HP', N'OPTIPLEX796', N'', N'', N'', N'10.11.12.19', N'', N'', N'', N'', N'', N'HP', N'IT', N'', N'', N'YES', N'IMPU2B#021/12-13', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F6200000000 AS DateTime), CAST(0x0000A3AA00000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'SALES', N'', N'34901A - Armature Multiplexer Module for', N'34901A - Armature Multiplexer Module for', N'', N'1104', N'CISCO', N'T102', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95000000000 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(33 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(34 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(35 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(36 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(37 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(38 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'ECS1-IT-DT-000001', NULL, N'903036218', N'PBXRFEQ', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6600000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'$', CAST(50 AS Decimal(18, 0)), CAST(2910000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3E00000000 AS DateTime), N'ABC124', CAST(0x00009F5300000000 AS DateTime), CAST(58100 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08D1 AS DateTime), N'DELL', N'OPTIPLEX791', N'', N'A', N'', N'10.11.12.14', N'1', N'I8', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'SEZ', N'IMPBU2B#123/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5D00000000 AS DateTime), CAST(0x0000A3A500000000 AS DateTime), N'', 1, N'AMC', N'', N'CS', N'WIPRO', N'BPO', N'', N'', N'', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, NULL, N'', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(41 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'ECS1-IT-DT-000002', NULL, N'90303627', N'PBXRFEN', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6700000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'INR', CAST(20 AS Decimal(18, 0)), CAST(1164000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3F00000000 AS DateTime), N'ABC125', CAST(0x00009F5400000000 AS DateTime), CAST(58300 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08DB AS DateTime), N'DELL', N'OPTIPLEX792', N'', N'A', N'', N'10.11.12.15', N'1', N'I9', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'YES', N'IMPBU2B#106/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(0x0000A3A600000000 AS DateTime), N'', 1, N'WARRANTY', N'', N'FF', N'WIPRO', N'BPO', N'', N'9000023044', N'OPTIXIAXM12-02,CHASSIS,12-SLOT,XM FORM', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A95800000000 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(47 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'ECS1-IT-DT-000002', NULL, N'90303627', N'PBXRFEN', N'IT-CO-DT-00', N'ECS1-1F-00-00-00-00', N'BDC', N'ECS1', N'', N'CISCO', N'', N'', N'', N'WT01      ', N'', CAST(0x00009F6700000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(58200 AS Decimal(18, 0)), N'INR', CAST(20 AS Decimal(18, 0)), CAST(1164000 AS Decimal(18, 0)), N'1103345', CAST(0x00009F3F00000000 AS DateTime), N'ABC125', CAST(0x00009F5400000000 AS DateTime), CAST(58300 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A93700AA08DB AS DateTime), N'DELL', N'OPTIPLEX792', N'', N'A', N'', N'10.11.12.15', N'1', N'I9', N'8GB', N'', N'', N'DELL', N'IT', N'', N'', N'YES', N'IMPBU2B#106/13-14', N'CAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x00009F5E00000000 AS DateTime), CAST(0x0000A3A600000000 AS DateTime), N'', 1, N'WARRANTY', N'', N'FF', N'WIPRO', N'BPO', N'', N'9000023044', N'OPTIXIAXM12-02,CHASSIS,12-SLOT,XM FORM', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A95400CEBCFC AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(48 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'02-IT-LT-000001', NULL, N'90335905', N'R8LTA7E', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'Chandrappa', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97B0124DCBD AS DateTime), N'Lenovo', N'Laptop', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'NCAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'', N'Wipro Limited', N'CMF', N'', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E00761C3C AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(49 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'02-IT-LT-000002', NULL, N'90335905', N'R8LTA7E', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(4590 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'9000024288', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C456 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#167/2014', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000024288', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'9000024288', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E00761C3C AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(50 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'02-IT-LT-000003', NULL, N'90335906', N'R8LTA7H', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(4590 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'9000024288', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C456 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#167/2014', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000024288', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'9000024288', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E00761C3C AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(51 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'02-IT-LT-000004', NULL, N'90335908', N'R8LTA7K', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CIS-CIS-PJ-CISCO_NANO_IO', N'deepak.ladha@wipro.com', N'lakshman.chandrappa@wipro.com', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(4590 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'9000024288', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97C00F9C456 AS DateTime), N'Laptop', N'Lenovo', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'CLIENT', N'IT', N'', N'', N'SEZ', N'IMPU2B#167/2014', N'', N'', N'80', 0, NULL, N'SJS3', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'T7015', N'Wipro Limited', N'', N'9000024288', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'9000024288', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E00761C3C AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(56 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'02-IT-HO-000005', NULL, N'90024621', N'INM08121UQV', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/08/2007;14.05.07', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013A342A AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2# 52/09-10 26-09-09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E0137F4FE AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(57 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'02-IT-HO-000006', NULL, N'90024622', N'INM08111R6J', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013AD800 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'U2/133/2009-10', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E0137F4FE AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(62 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'02-IT-HO-000007', NULL, N'90024623', N'INM0811235H', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(3968297 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(3968297 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'025/2004;26.05.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013BB39C AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2#17/09-10;20.04.09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E013DDB2B AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(52 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'02-IT-HO-000003', NULL, N'90024617', N'INM081227LV', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013817BC AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2#17/09-10;20.04.09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E008069F0 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(53 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'02-IT-HO-000004', NULL, N'90024620', N'INM08121UAG', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97701396509 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2#17/09-10;20.04.09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E008069F0 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(54 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'02-IT-HO-000005', NULL, N'90024621', N'INM08121UQV', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/08/2007;14.05.07', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013A342A AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2# 52/09-10 26-09-09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E012DFA4E AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(55 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'02-IT-HO-000006', NULL, N'90024622', N'INM08111R6J', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013AD800 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'U2/133/2009-10', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A99E012DFA4E AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(58 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'02-IT-HO-000005', NULL, N'90024621', N'INM08121UQV', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/08/2007;14.05.07', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013A342A AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2# 52/09-10 26-09-09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E01396DA0 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(59 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'02-IT-HO-000006', NULL, N'90024622', N'INM08111R6J', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013AD800 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'U2/133/2009-10', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E01396DA0 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(60 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'02-IT-HO-000005', NULL, N'90024621', N'INM08121UQV', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/08/2007;14.05.07', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013A342A AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'IMPBU2# 52/09-10 26-09-09', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E013B9517 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(61 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'02-IT-HO-000006', NULL, N'90024622', N'INM08111R6J', N'IT-HO-00-00', N'02-S3-12-BW-00-00', N'BDC', N'01', N'', N'CISCO', N'CISCO', N'Chandrappa', N'', N'WT        ', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(13579 AS Decimal(18, 0)), N'INR', CAST(1 AS Decimal(18, 0)), CAST(13579 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'SH/057/2004;04.08.2004', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A977013AD800 AS DateTime), N'CISCO', N'VOIP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'CAP', N'VER', N'', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'U2/133/2009-10', 1, N'', N'', N'', N'Wipro Limited', N'CMF', N'', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'CISCO IP PHONE 7960G,GLOBAL,SPARE', N'', N'8900', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', 0, CAST(0x0000A99E013B9517 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[ASSET_ACQUISITION_HISTORY] ([ACQUISITION_ID], [RUNNING_SERIAL_NO], [ASSET_CODE], [TAG_ID], [ASSET_ID], [SERIAL_CODE], [CATEGORY_CODE], [ASSET_LOCATION], [PLANT], [LOCATION], [CUSTOMER_ORDER_NO], [PROJECT_NAME], [SUB_PROJECT_NAME], [PROJECT_MANAGER], [ASSIGN_PRO_TO_EMP], [COMP_CODE], [VENDOR_CODE], [INSTALLED_DATE], [PURCHASED_DATE], [PURCHASED_AMT], [CURRENCY], [TRANSFER_PRICE], [LOCAL_CURRENCY], [PO_NUMBER], [PO_DATE], [INVOICE_NO], [SALE_DATE], [SALE_AMT], [CREATED_BY], [CREATED_ON], [ASSET_MAKE], [MODEL_NAME], [ASSET_PROCESS], [SECURITY_CLASSIFICATION], [ASSET_SIZE], [ASSET_VLAN], [ASSET_HDD], [ASSET_PROCESSOR], [ASSET_RAM], [ASSET_IMEI_NO], [ASSET_PHONE_MEMORY], [ASSET_SERVICE_PROVIDER], [ASSET_TYPE], [ASSET_BOE], [ASSET_REGISTER_NO], [BONDED_TYPE], [BOND_NO], [CAPITALISED_STATUS], [VERIFIABLE_STATUS], [PORT_NO], [ASSET_ALLOCATED], [SOLD_SCRAPPED_STATUS], [SECURITY_GATE_ENTRY_NO], [SECURITY_GATE_ENTRY_DATE], [AMC_WARRANTY_START_DATE], [AMC_WARRANTY_END_DATE], [REMARKS], [ASSET_APPROVED], [AMC_WARRANTY], [WORKSTATION_NO], [COST_CENTER_NO], [COMPANY_NAME], [DEPARTMENT], [INVENTORY_NOTE], [ASSET_DESCRIPTION], [ASSET_MAIN_TEXT], [ASSET_DESCRIPTION_1], [ACCT_DE], [ROOM], [BA], [UPDATED_ON], [UPDATED_BY], [EX_FIELD1], [EX_FIELD2], [EX_FIELD3], [EX_FIELD4], [EX_FIELD5], [Status], [MOVED_ON], [MOVED_BY], [RequestID], [RequestStatus]) VALUES (CAST(63 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'02-IT-LT-000001', NULL, N'90335905', N'R8LTA7E', N'IT-HW-LT-00', N'02-S3-12-BW-00-00', N'BDC', N'02', N'', N'CISCO', N'CISCO', N'Chandrappa', N'Chandrappa', N'WT        ', N'0001', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'INR', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', CAST(0x0000000000000000 AS DateTime), N'', CAST(0x0000000000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), N'sysadmin', CAST(0x0000A97B0124DCBD AS DateTime), N'Lenovo', N'Laptop', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'IT', N'', N'', N'SEZ', N'', N'NCAP', N'VER', N'80', 0, NULL, N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'', 1, N'NONE', N'', N'', N'Wipro Limited', N'CMF', N'', N'THINKPAD T420 LAPTOP', N'THINKPAD T420 LAPTOP', N'', N'8900', N'CISCO', N'T100', NULL, NULL, N'', N'', N'', N'', N'', 1, CAST(0x0000A9AE013146FB AS DateTime), N'sysadmin', N'0220181200004', 9)
SET IDENTITY_INSERT [dbo].[ASSET_ACQUISITION_HISTORY] OFF
INSERT [dbo].[ASSET_ALLOCATION] ([ASSET_CODE], [ASSET_ALLOCATION_DATE], [REQUESTED_BY], [REQUESTED_BY_ID], [APPROVED_BY], [APPROVED_BY_ID], [ASSET_ALLOCATED_EMP], [ALLOCATED_EMP_ID], [ALLOCATED_DEPARTMENT], [ALLOCATED_PROCESS], [ASSET_LOCATION], [EXPECTED_RTN_DATE], [ACTUAL_RTN_DATE], [COMP_CODE], [PORT_NO], [VLAN], [TICKET_NO], [GATEPASS_NO], [WORKSTATION_NO], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [REMARKS]) VALUES (N'02-IT-HO-000001', CAST(0x0000A98400000000 AS DateTime), N'Scott', N'EMP01', N'Scott', N'EMP01', N'Scott', N'EMP01', N'CMF', N'REFID', N'02-S3-PF-DW-0T-00', CAST(0x0000000000000000 AS DateTime), NULL, N'WT', N'120', N'', N'', N'', N'', N'sysadmin', CAST(0x0000A98401380991 AS DateTime), NULL, NULL, N'')
INSERT [dbo].[ASSET_ALLOCATION] ([ASSET_CODE], [ASSET_ALLOCATION_DATE], [REQUESTED_BY], [REQUESTED_BY_ID], [APPROVED_BY], [APPROVED_BY_ID], [ASSET_ALLOCATED_EMP], [ALLOCATED_EMP_ID], [ALLOCATED_DEPARTMENT], [ALLOCATED_PROCESS], [ASSET_LOCATION], [EXPECTED_RTN_DATE], [ACTUAL_RTN_DATE], [COMP_CODE], [PORT_NO], [VLAN], [TICKET_NO], [GATEPASS_NO], [WORKSTATION_NO], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [REMARKS]) VALUES (N'02-IT-HO-000002', CAST(0x0000A98400000000 AS DateTime), N'Scott', N'EMP01', N'Scott', N'EMP01', N'Scott', N'EMP01', N'CMF', N'REFID', N'02-S3-PF-DW-0T-00', CAST(0x0000000000000000 AS DateTime), NULL, N'WT', N'120', N'', N'', N'', N'', N'sysadmin', CAST(0x0000A98401380994 AS DateTime), NULL, NULL, N'')
INSERT [dbo].[ASSET_ALLOCATION] ([ASSET_CODE], [ASSET_ALLOCATION_DATE], [REQUESTED_BY], [REQUESTED_BY_ID], [APPROVED_BY], [APPROVED_BY_ID], [ASSET_ALLOCATED_EMP], [ALLOCATED_EMP_ID], [ALLOCATED_DEPARTMENT], [ALLOCATED_PROCESS], [ASSET_LOCATION], [EXPECTED_RTN_DATE], [ACTUAL_RTN_DATE], [COMP_CODE], [PORT_NO], [VLAN], [TICKET_NO], [GATEPASS_NO], [WORKSTATION_NO], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [REMARKS]) VALUES (N'02-IT-HO-000001', CAST(0x0000A98400000000 AS DateTime), N'Scott', N'EMP01', N'Scott', N'EMP01', N'Scott', N'EMP01', N'CMF', N'REFID', N'02-S3-PF-DW-0T-00', CAST(0x0000000000000000 AS DateTime), NULL, N'WT', N'120', N'', N'', N'', N'', N'sysadmin', CAST(0x0000A98401380991 AS DateTime), NULL, NULL, N'')
INSERT [dbo].[ASSET_ALLOCATION] ([ASSET_CODE], [ASSET_ALLOCATION_DATE], [REQUESTED_BY], [REQUESTED_BY_ID], [APPROVED_BY], [APPROVED_BY_ID], [ASSET_ALLOCATED_EMP], [ALLOCATED_EMP_ID], [ALLOCATED_DEPARTMENT], [ALLOCATED_PROCESS], [ASSET_LOCATION], [EXPECTED_RTN_DATE], [ACTUAL_RTN_DATE], [COMP_CODE], [PORT_NO], [VLAN], [TICKET_NO], [GATEPASS_NO], [WORKSTATION_NO], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [REMARKS]) VALUES (N'02-IT-HO-000002', CAST(0x0000A98400000000 AS DateTime), N'Scott', N'EMP01', N'Scott', N'EMP01', N'Scott', N'EMP01', N'CMF', N'REFID', N'02-S3-PF-DW-0T-00', CAST(0x0000000000000000 AS DateTime), NULL, N'WT', N'120', N'', N'', N'', N'', N'sysadmin', CAST(0x0000A98401380994 AS DateTime), NULL, NULL, N'')
INSERT [dbo].[ASSET_TRANSFER] ([ASSET_CODE], [SERIAL_CODE], [MODEL_NAME], [ASSET_PROCESS], [FROM_LOCATION], [TO_LOCATION], [REMARKS], [CREATED_BY], [CREATED_ON], [IUT_STATUS], [FROM_WORKSTATION], [TO_WORKSTATION], [FROM_PORT], [TO_PORT], [TRANSFER_DATE], [COMP_CODE], [TRANSFER_TYPE], [INTER_FROM_LOCATION], [INTER_TO_LOCATION], [INTER_TO_PROCESS]) VALUES (N'02-IT-HO-000001', N'INM08111R6Z', N'VOIP', N'REFID', NULL, NULL, N'ggg', N'', CAST(0x0000A98401491433 AS DateTime), N'', N'', N'ABCD', N'120', N'79', CAST(0x0000A98400000000 AS DateTime), N'WT', N'INTER', N'02-S3-PF-DW-0T-00', N'01-S1-1F-DW-00-00', N'REFID')
INSERT [dbo].[ASSET_TRANSFER] ([ASSET_CODE], [SERIAL_CODE], [MODEL_NAME], [ASSET_PROCESS], [FROM_LOCATION], [TO_LOCATION], [REMARKS], [CREATED_BY], [CREATED_ON], [IUT_STATUS], [FROM_WORKSTATION], [TO_WORKSTATION], [FROM_PORT], [TO_PORT], [TRANSFER_DATE], [COMP_CODE], [TRANSFER_TYPE], [INTER_FROM_LOCATION], [INTER_TO_LOCATION], [INTER_TO_PROCESS]) VALUES (N'02-IT-HO-000002', N'INM0811QGB', N'VOIP', N'REFID', NULL, NULL, N'bgggg', N'', CAST(0x0000A98401516AD0 AS DateTime), N'', N'', N'555', N'120', N'5555', CAST(0x0000A98400000000 AS DateTime), N'WT', N'INTER', N'02-S3-PF-DW-0T-00', N'02-S3-PF-DW-0T-00', N'REFID')
INSERT [dbo].[ASSET_TRANSFER] ([ASSET_CODE], [SERIAL_CODE], [MODEL_NAME], [ASSET_PROCESS], [FROM_LOCATION], [TO_LOCATION], [REMARKS], [CREATED_BY], [CREATED_ON], [IUT_STATUS], [FROM_WORKSTATION], [TO_WORKSTATION], [FROM_PORT], [TO_PORT], [TRANSFER_DATE], [COMP_CODE], [TRANSFER_TYPE], [INTER_FROM_LOCATION], [INTER_TO_LOCATION], [INTER_TO_PROCESS]) VALUES (N'02-IT-HO-000001', N'INM08111R6Z', N'VOIP', N'REFID', NULL, NULL, N'ggg', N'', CAST(0x0000A98401491433 AS DateTime), N'', N'', N'ABCD', N'120', N'79', CAST(0x0000A98400000000 AS DateTime), N'WT', N'INTER', N'02-S3-PF-DW-0T-00', N'01-S1-1F-DW-00-00', N'REFID')
INSERT [dbo].[ASSET_TRANSFER] ([ASSET_CODE], [SERIAL_CODE], [MODEL_NAME], [ASSET_PROCESS], [FROM_LOCATION], [TO_LOCATION], [REMARKS], [CREATED_BY], [CREATED_ON], [IUT_STATUS], [FROM_WORKSTATION], [TO_WORKSTATION], [FROM_PORT], [TO_PORT], [TRANSFER_DATE], [COMP_CODE], [TRANSFER_TYPE], [INTER_FROM_LOCATION], [INTER_TO_LOCATION], [INTER_TO_PROCESS]) VALUES (N'02-IT-HO-000002', N'INM0811QGB', N'VOIP', N'REFID', NULL, NULL, N'bgggg', N'', CAST(0x0000A98401516AD0 AS DateTime), N'', N'', N'555', N'120', N'5555', CAST(0x0000A98400000000 AS DateTime), N'WT', N'INTER', N'02-S3-PF-DW-0T-00', N'02-S3-PF-DW-0T-00', N'REFID')
INSERT [dbo].[AssetNotification] ([RequestId], [ReqStage], [AlertOn]) VALUES (N'0220181100001', 11, CAST(0x0000A9AB00C78015 AS DateTime))
INSERT [dbo].[AssetNotification] ([RequestId], [ReqStage], [AlertOn]) VALUES (N'0220181100002', 11, CAST(0x0000A9AB00C788B3 AS DateTime))
INSERT [dbo].[AssetNotification] ([RequestId], [ReqStage], [AlertOn]) VALUES (N'0220181100003', 11, CAST(0x0000A9AB00C78995 AS DateTime))
INSERT [dbo].[AssetNotification] ([RequestId], [ReqStage], [AlertOn]) VALUES (N'0220181100005', 11, CAST(0x0000A9AB00C78B3F AS DateTime))
INSERT [dbo].[AssetNotification] ([RequestId], [ReqStage], [AlertOn]) VALUES (N'0220181100004', 11, CAST(0x0000A9AB00C78AC9 AS DateTime))
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-HO-00-00', N'Hardware and Others', N'', N'', 1, N'IT', N'WT01', N'HO', 1, N'Hardware and Others', N'sysadmin', CAST(0x0000A96C01185F6A AS DateTime), N'sysadmin', CAST(0x0000A9AE0144548C AS DateTime))
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-HW-00-00', N'Hardware', N'', N'', 1, N'IT', N'WT', N'HW', 1, N'Hardware', N'sysadmin', CAST(0x0000A96C01262739 AS DateTime), NULL, NULL)
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-HW-CE-00', N'Communication Equipment', N'', N'IT-HW-00-00', 2, N'IT', N'WT', N'CE', 1, N'Hardware - Communication Equipments - HC (IT-HW-CE-00)', N'sysadmin', CAST(0x0000A96C012AEC10 AS DateTime), N'sysadmin', CAST(0x0000A96C012BDE5C AS DateTime))
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-HW-DT-00', N'Desktop', N'', N'IT-HW-00-00', 2, N'IT', N'WT', N'DT', 1, N'Hardware - Desktop - HD (IT-HW-DT-00)', N'sysadmin', CAST(0x0000A96C0127387D AS DateTime), N'sysadmin', CAST(0x0000A96C012BEB08 AS DateTime))
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-HW-LT-00', N'Laptop', N'', N'IT-HW-00-00', 2, N'IT', N'WT', N'LT', 1, N'Hardware - Laptop - HL (IT-HW-LT-00)', N'sysadmin', CAST(0x0000A96C012B65CF AS DateTime), NULL, NULL)
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-HW-MO-00', N'Monitors', N'', N'IT-HW-00-00', 2, N'IT', N'WT', N'MO', 1, N'Hardware - Monitors - HM (IT-HW-MO-00)', N'sysadmin', CAST(0x0000A96C012B8377 AS DateTime), NULL, NULL)
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-HW-NE-00', N'Network Equipment', N'', N'IT-HW-00-00', 2, N'IT', N'WT', N'NE', 1, N'Hardware - Network Equipment - HN (IT-HW-NE-00)', N'sysadmin', CAST(0x0000A96C012BB2B7 AS DateTime), NULL, NULL)
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-HW-OS-00', N'Others', N'', N'IT-HW-00-00', 2, N'IT', N'WT', N'OS', 1, N'Hardware - Others - HO (IT-HW-OS-00)', N'sysadmin', CAST(0x0000A96C0127C40C AS DateTime), NULL, NULL)
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-MS-00-00', N'MISCELLANEOUS', N'', N'', 1, N'IT', N'FM', N'MS', 1, N'MISCELLANEOUS', N'sysadmin', CAST(0x0000A10300E68378 AS DateTime), N'sysadmin', CAST(0x0000A10300E6FA57 AS DateTime))
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-OE-00-00', N'OFFICE EQUIPMENTS', N'', N'', 1, N'IT', N'WT01', N'OE', 1, N'OFFICE EQUIPMENTS', N'sysadmin', CAST(0x0000A0C200D92235 AS DateTime), N'sysadmin', CAST(0x0000A14F00B171EB AS DateTime))
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-PN-00-00', N'Printers All', N'', N'', 1, N'IT', N'SK', N'PN', 1, N'All Printers', N'sysadmin', CAST(0x0000A71D0101B78B AS DateTime), NULL, NULL)
INSERT [dbo].[CATEGORY_MASTER] ([CATEGORY_CODE], [CATEGORY_NAME], [CATEGORY_TYPE], [PARENT_CATEGORY], [CATEGORY_LEVEL], [ASSET_TYPE], [COMP_CODE], [CATEGORY_INITIALS], [ACTIVE], [REMARKS], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'IT-SE-00-00', N'System Servers', N'', N'', 1, N'IT', N'SK', N'SE', 1, N'Servers', N'sysadmin', CAST(0x0000A71D0103B2B2 AS DateTime), NULL, NULL)
INSERT [dbo].[CITY_MASTER] ([CITY_CODE], [COUNTRY_CODE], [CITY_NAME], [ZIPCODE], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'BG', N'IN', N'Banglore', NULL, N'Banglore', 1, CAST(0x0000A92F00CECB8A AS DateTime), N'Sysadmin', CAST(0x0000A9AE01464C00 AS DateTime), N'sysadmin')
INSERT [dbo].[CITY_MASTER] ([CITY_CODE], [COUNTRY_CODE], [CITY_NAME], [ZIPCODE], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'DL', N'US', N'Delhi', NULL, N'Delhi', 1, CAST(0x0000A92A0121DEB7 AS DateTime), N'sysadmin', CAST(0x0000A9A900C5F6F1 AS DateTime), N'sysadmin')
INSERT [dbo].[CLEARANCE_MASTER] ([CLEARANCE_CODE], [DESCRIPTION], [TYPE], [CREATED_ON], [CREATED_BY]) VALUES (1, N'Get STPI/SEZ approval', N'Source', NULL, NULL)
INSERT [dbo].[CLEARANCE_MASTER] ([CLEARANCE_CODE], [DESCRIPTION], [TYPE], [CREATED_ON], [CREATED_BY]) VALUES (2, N'Get destination CMF approval', N'Source', NULL, NULL)
INSERT [dbo].[CLEARANCE_MASTER] ([CLEARANCE_CODE], [DESCRIPTION], [TYPE], [CREATED_ON], [CREATED_BY]) VALUES (3, N'Upload the approval for GSV', N'Source', NULL, NULL)
INSERT [dbo].[CLEARANCE_MASTER] ([CLEARANCE_CODE], [DESCRIPTION], [TYPE], [CREATED_ON], [CREATED_BY]) VALUES (4, N'Packaging assesment', N'Source', NULL, NULL)
INSERT [dbo].[CLEARANCE_MASTER] ([CLEARANCE_CODE], [DESCRIPTION], [TYPE], [CREATED_ON], [CREATED_BY]) VALUES (5, N'Getting BFM approval ', N'Source', NULL, NULL)
INSERT [dbo].[CLEARANCE_MASTER] ([CLEARANCE_CODE], [DESCRIPTION], [TYPE], [CREATED_ON], [CREATED_BY]) VALUES (6, N'RFID physical inspection', N'Source', NULL, NULL)
INSERT [dbo].[CLEARANCE_MASTER] ([CLEARANCE_CODE], [DESCRIPTION], [TYPE], [CREATED_ON], [CREATED_BY]) VALUES (7, N'RFID physical verification', N'Dest', NULL, NULL)
INSERT [dbo].[CLEARANCE_MASTER] ([CLEARANCE_CODE], [DESCRIPTION], [TYPE], [CREATED_ON], [CREATED_BY]) VALUES (8, N'Posting the request in system', N'Dest', NULL, NULL)
INSERT [dbo].[CLEARANCE_MASTER] ([CLEARANCE_CODE], [DESCRIPTION], [TYPE], [CREATED_ON], [CREATED_BY]) VALUES (9, N'Issue the goods to RFID request on', N'Dest', NULL, NULL)
INSERT [dbo].[CLEARANCE_MASTER] ([CLEARANCE_CODE], [DESCRIPTION], [TYPE], [CREATED_ON], [CREATED_BY]) VALUES (10, N'RFID sticker verfied', N'Dest', NULL, NULL)
INSERT [dbo].[CODE_MASTER] ([CODE], [TYPE]) VALUES (N'$', N'CurrencyType')
INSERT [dbo].[CODE_MASTER] ([CODE], [TYPE]) VALUES (N'Calibration', N'Temp')
INSERT [dbo].[CODE_MASTER] ([CODE], [TYPE]) VALUES (N'EUR', N'CurrencyType')
INSERT [dbo].[CODE_MASTER] ([CODE], [TYPE]) VALUES (N'INR', N'CurrencyType')
INSERT [dbo].[CODE_MASTER] ([CODE], [TYPE]) VALUES (N'NO', N'BondedType')
INSERT [dbo].[CODE_MASTER] ([CODE], [TYPE]) VALUES (N'Repair/Testing', N'Temp')
INSERT [dbo].[CODE_MASTER] ([CODE], [TYPE]) VALUES (N'REXP', N'BondedType')
INSERT [dbo].[CODE_MASTER] ([CODE], [TYPE]) VALUES (N'RMA', N'Temp')
INSERT [dbo].[CODE_MASTER] ([CODE], [TYPE]) VALUES (N'SEZ', N'BondedType')
INSERT [dbo].[CODE_MASTER] ([CODE], [TYPE]) VALUES (N'STPI', N'BondedType')
INSERT [dbo].[CODE_MASTER] ([CODE], [TYPE]) VALUES (N'YES', N'BondedType')
INSERT [dbo].[COMPANY_LOCATION] ([COMP_CODE], [COMP_NAME], [LOCATION], [REMARKS], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [COMP_OWNER], [TECHOPS_EMAIL]) VALUES (N'WT01', N'WIPRO', N'COH2', N'COH2', 1, N'sysadmin', CAST(0x0000A92701640BDC AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[COMPANY_LOCATION] ([COMP_CODE], [COMP_NAME], [LOCATION], [REMARKS], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [COMP_OWNER], [TECHOPS_EMAIL]) VALUES (N'WT01', N'WIPRO', N'ECS1', N'ECS1', 1, N'sysadmin', CAST(0x0000A92701640BDC AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[COMPANY_LOCATION] ([COMP_CODE], [COMP_NAME], [LOCATION], [REMARKS], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [COMP_OWNER], [TECHOPS_EMAIL]) VALUES (N'WT01', N'WIPRO', N'ECS2', N'ECS2', 1, N'sysadmin', CAST(0x0000A928015DA48E AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[COMPANY_LOCATION] ([COMP_CODE], [COMP_NAME], [LOCATION], [REMARKS], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [COMP_OWNER], [TECHOPS_EMAIL]) VALUES (N'WT01', N'WIPRO', N'KRG2', N'KRG2', 1, N'sysadmin', CAST(0x0000A928015DF47B AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[COMPANY_LOCATION] ([COMP_CODE], [COMP_NAME], [LOCATION], [REMARKS], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [COMP_OWNER], [TECHOPS_EMAIL]) VALUES (N'WT01', N'WIPRO', N'SJS3', N'SJS3', 1, N'sysadmin', CAST(0x0000A92900B24133 AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[COMPANY_MASTER] ([COMP_CODE], [PLANT_CODE], [STORAGE_LOC_CODE], [COMP_NAME], [REMARKS], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [COMP_OWNER]) VALUES (N'WT', N'BDC', N'01', N'Wipro Limited', N'Wipro Limited - SJS1', 1, N'sysadmin', CAST(0x0000A96C011061AB AS DateTime), N'sysadmin', CAST(0x0000A97300F67208 AS DateTime), 0)
INSERT [dbo].[COMPANY_MASTER] ([COMP_CODE], [PLANT_CODE], [STORAGE_LOC_CODE], [COMP_NAME], [REMARKS], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [COMP_OWNER]) VALUES (N'WT', N'BDC', N'02', N'Wipro Limited', N'Wipro Limited - SJS3', 1, N'sysadmin', CAST(0x0000A97300F5F286 AS DateTime), N'sysadmin', CAST(0x0000A97300F6819A AS DateTime), 0)
INSERT [dbo].[COUNTRY_MASTER] ([COUNTRY_CODE], [COUNTRY_NAME], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'IN', N'India', N'india', 1, CAST(0x0000A92A00D1FE8B AS DateTime), N'sysadmin', CAST(0x0000A9AE014603BD AS DateTime), N'sysadmin')
INSERT [dbo].[COUNTRY_MASTER] ([COUNTRY_CODE], [COUNTRY_NAME], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'US', N'United state of america', N'United state of america', 1, CAST(0x0000A9A900BFD1F3 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[DEPARTMENT_MASTER] ([DEPT_CODE], [DEPT_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'CMF', N'Central Materials Functio', N'', 1, N'WT', N'sysadmin', CAST(0x0000A97300C0E6B5 AS DateTime), N'sysadmin', CAST(0x0000A9AE014AC474 AS DateTime))
INSERT [dbo].[DEPARTMENT_MASTER] ([DEPT_CODE], [DEPT_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'GSG', N'Global Security Group', N'Global Security Group', 1, N'WT', N'sysadmin', CAST(0x0000A97300C1111B AS DateTime), NULL, NULL)
INSERT [dbo].[DEPARTMENT_MASTER] ([DEPT_CODE], [DEPT_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'WPROJ', N'Wipro Project', N'', 1, N'WT', N'sysadmin', CAST(0x0000A99A010EA986 AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE_MASTER] ([EMPLOYEE_CODE], [EMPLOYEE_NAME], [EMP_LOC_CODE], [EMP_PROJECT_CODE], [EMP_DEPT_CODE], [EMP_REPORTING_TO], [EMP_EMAIL], [EMP_DOJ], [EMP_PHONE], [ACTIVE], [REMARKS], [STORAGE_LOC_CODE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [EMP_PROCESS_CODE]) VALUES (N'EMP01', N'Scott', N'02', N'CISCO', N'', N'', N'scott@gmail.com', CAST(0x0000A98400000000 AS DateTime), N'', 1, N'', N'02', N'WT', N'sysadmin', CAST(0x0000A98400E88F3E AS DateTime), N'sysadmin', CAST(0x0000A9AE014853B3 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[GENERAL_MASTER] ON 

INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (1, N'India', N'', N'', N'country India', 0, NULL, N'admin', CAST(0x0000A04600FAF24D AS DateTime), N'bcil', CAST(0x0000A06300FC940A AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (7, N'MP', N'', N'India', N'MP', 1, NULL, N'admin', CAST(0x0000A046010DF936 AS DateTime), N'admin', CAST(0x0000A046011344A5 AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (4, N'Kanpur', N'UP', N'India', N'city kanpur', 1, NULL, N'admin', CAST(0x0000A04600FED497 AS DateTime), N'admin', CAST(0x0000A04B00F05EDC AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (5, N'Lucknow', N'UP', N'India', N'city Lko', 1, NULL, N'admin', CAST(0x0000A046010C4524 AS DateTime), N'admin', CAST(0x0000A04700BDC8B8 AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (10, N'USA', N'', N'', N'country usa', 1, NULL, N'admin', CAST(0x0000A04800B66B67 AS DateTime), N'admin', CAST(0x0000A04800C1D952 AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (13, N'Columbia', N'', N'USA', N'state columbia', 0, NULL, N'admin', CAST(0x0000A04800CBD14E AS DateTime), N'bcil', CAST(0x0000A05C0122B3BF AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (28, N'33', N'MP', N'India', N'3', 1, N'FI', N'bcil', CAST(0x0000A06300B99D48 AS DateTime), NULL, NULL)
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (29, N'ASE', N'', N'', N'e', 0, N'FI', N'bcil', CAST(0x0000A06300B9B8D3 AS DateTime), NULL, NULL)
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (27, N'ass', N'', N'USA', N'u', 0, N'FI', N'bcil', CAST(0x0000A05C0124963E AS DateTime), NULL, NULL)
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (23, N'asasa', N'', N'', N'adasd', 0, N'FI', N'bcil', CAST(0x0000A05C011A31EE AS DateTime), NULL, NULL)
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (1, N'India', N'', N'', N'country India', 0, NULL, N'admin', CAST(0x0000A04600FAF24D AS DateTime), N'bcil', CAST(0x0000A06300FC940A AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (7, N'MP', N'', N'India', N'MP', 1, NULL, N'admin', CAST(0x0000A046010DF936 AS DateTime), N'admin', CAST(0x0000A046011344A5 AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (4, N'Kanpur', N'UP', N'India', N'city kanpur', 1, NULL, N'admin', CAST(0x0000A04600FED497 AS DateTime), N'admin', CAST(0x0000A04B00F05EDC AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (5, N'Lucknow', N'UP', N'India', N'city Lko', 1, NULL, N'admin', CAST(0x0000A046010C4524 AS DateTime), N'admin', CAST(0x0000A04700BDC8B8 AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (10, N'USA', N'', N'', N'country usa', 1, NULL, N'admin', CAST(0x0000A04800B66B67 AS DateTime), N'admin', CAST(0x0000A04800C1D952 AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (13, N'Columbia', N'', N'USA', N'state columbia', 0, NULL, N'admin', CAST(0x0000A04800CBD14E AS DateTime), N'bcil', CAST(0x0000A05C0122B3BF AS DateTime))
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (28, N'33', N'MP', N'India', N'3', 1, N'FI', N'bcil', CAST(0x0000A06300B99D48 AS DateTime), NULL, NULL)
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (29, N'ASE', N'', N'', N'e', 0, N'FI', N'bcil', CAST(0x0000A06300B9B8D3 AS DateTime), NULL, NULL)
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (27, N'ass', N'', N'USA', N'u', 0, N'FI', N'bcil', CAST(0x0000A05C0124963E AS DateTime), NULL, NULL)
INSERT [dbo].[GENERAL_MASTER] ([GENERAL_CODE], [GENERAL_NAME], [STATE_NAME], [COUNTRY_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (23, N'asasa', N'', N'', N'adasd', 0, N'FI', N'bcil', CAST(0x0000A05C011A31EE AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[GENERAL_MASTER] OFF
INSERT [dbo].[GROUP_MASTER] ([GROUP_CODE], [GROUP_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [ASSET_TYPE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'AD', N'Administrator', N'', 1, N'GB', N'', N'test', CAST(0x0000A0BE01073011 AS DateTime), N'', CAST(0x0000A0BE01073011 AS DateTime))
INSERT [dbo].[GROUP_MASTER] ([GROUP_CODE], [GROUP_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [ASSET_TYPE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'CMF', N'CMF Group', N'CMF Group', 1, N'WT', N'IT', N'PMGroup', CAST(0x0000A99D018222F3 AS DateTime), N'sysadmin', CAST(0x0000A9AE0147BB50 AS DateTime))
INSERT [dbo].[GROUP_MASTER] ([GROUP_CODE], [GROUP_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [ASSET_TYPE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'CMFREGN', N'CMF Regional Users', N'CMF Regional Users', 1, N'WT', N'IT', N'sysadmin', CAST(0x0000A97300C18234 AS DateTime), NULL, NULL)
INSERT [dbo].[GROUP_MASTER] ([GROUP_CODE], [GROUP_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [ASSET_TYPE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'DR', N'Name', NULL, 1, N'KM', N'ADMIN,IT', N'sysadmin', CAST(0x0000A16300F05DED AS DateTime), NULL, NULL)
INSERT [dbo].[GROUP_MASTER] ([GROUP_CODE], [GROUP_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [ASSET_TYPE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'PM', N'PM', N'PMREGN', 1, N'WT', N'IT', N'sysadmin', CAST(0x0000A99D017CFF3B AS DateTime), N'PMGroup', CAST(0x0000A99D017F9B2F AS DateTime))
INSERT [dbo].[GROUP_MASTER] ([GROUP_CODE], [GROUP_NAME], [REMARKS], [ACTIVE], [COMP_CODE], [ASSET_TYPE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'SYSADMIN', N'Domain Users', N'Domain Users of Bar Code India', 1, N'WT', N'IT', N'sysadmin', NULL, N'neeraj', CAST(0x0000A24000F1FC64 AS DateTime))
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'C0', N'G0', 1, N'USER_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 1, N'USER_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 2, N'CATEGORY_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 3, N'LOCATION_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 4, N'VENDOR_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 5, N'COMPANY_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 6, N'GROUP_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 7, N'EMPLOYEE_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 8, N'DEPRECIATION_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 9, N'GROUP_RIGHTS', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 10, N'DEPARTMENT_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 11, N'ASSET_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 12, N'EMPLOYEE_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 13, N'ASSET_ACQUISITION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 14, N'GENERAL_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 15, N'GATEPASS_GENERATION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 16, N'VENDOR_ESCALATION_MATRIX', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 17, N'ASSET_ALLOCATION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 18, N'CHANGE_PASSWORD', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 19, N'VIEW_AMC', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 20, N'PAGE_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 22, N'CALL_LOG', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 23, N'PROCESS_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 24, N'VIEW_ASSET_LIST', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 25, N'VIEW_GATEPASS_LIST', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 26, N'GENERATE_AMC', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 27, N'ASSET_ALLOCATION_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 28, N'GATEPASS_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 29, N'ASSET_TRACKING_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 30, N'ASSET_STOCK_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 31, N'RETURNABLE_ASSET_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 32, N'SWAPPING_ASSET', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 33, N'IMPORT_ASSET', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 34, N'SOLD_SCRAPPED_ASSET', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 35, N'ASSET_REPLACEMENT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 36, N'ASSET_TRANSFER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 37, N'ASSET_RECONCILIATION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'GB', N'AD', 38, N'APPROVE_ASSETS', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 1, N'USER_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 2, N'CATEGORY_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 3, N'LOCATION_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 4, N'VENDOR_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 5, N'COMPANY_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 6, N'GROUP_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 7, N'EMPLOYEE_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 9, N'GROUP_RIGHTS', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 10, N'DEPARTMENT_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 11, N'ASSET_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 13, N'ASSET_ACQUISITION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 15, N'GATEPASS_GENERATION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 16, N'VENDOR_ESCALATION_MATRIX', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 17, N'ASSET_ALLOCATION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 18, N'CHANGE_PASSWORD', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 19, N'VIEW_AMC', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 20, N'PAGE_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 22, N'CALL_LOG', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 23, N'PROCESS_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 24, N'VIEW_ASSET_LIST', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 25, N'VIEW_GATEPASS_LIST', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 27, N'ASSET_ALLOCATION_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 28, N'GATEPASS_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 29, N'ASSET_TRACKING_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 30, N'ASSET_STOCK_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 31, N'RETURNABLE_ASSET_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 32, N'SWAPPING_ASSET', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 33, N'IMPORT_ASSET', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 34, N'SOLD_SCRAPPED_ASSET', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 35, N'ASSET_REPLACEMENT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 36, N'ASSET_TRANSFER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 37, N'ASSET_RECONCILIATION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 38, N'APPROVE_ASSETS', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 39, N'APPROVE_GATEPASS', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 40, N'ASSET_SUMMARY_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 41, N'AMC_WARRANTY_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 42, N'ASSET_DASHBOARD', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 43, N'CALL_LOG_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 44, N'ALLOCATED_RETURNABLE_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 45, N'DOCUMENT_MANAGEMENT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'KM', N'DR', 46, N'CREATE_INITIAL_DETAILS', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 1, N'USER_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 2, N'CATEGORY_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 3, N'LOCATION_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 4, N'VENDOR_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 5, N'COMPANY_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 6, N'GROUP_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 7, N'EMPLOYEE_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 9, N'GROUP_RIGHTS', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 10, N'DEPARTMENT_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 11, N'ASSET_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 13, N'ASSET_ACQUISITION', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 15, N'GATEPASS_GENERATION', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 16, N'VENDOR_ESCALATION_MATRIX', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 17, N'ASSET_ALLOCATION', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 18, N'CHANGE_PASSWORD', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 19, N'VIEW_AMC', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 20, N'PAGE_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 22, N'CALL_LOG', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 23, N'PROCESS_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 24, N'VIEW_ASSET_LIST', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 25, N'VIEW_GATEPASS_LIST', 0, 0, 0, 0, 0)
GO
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 27, N'ASSET_ALLOCATION_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 28, N'GATEPASS_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 29, N'ASSET_TRACKING_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 30, N'ASSET_STOCK_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 31, N'RETURNABLE_ASSET_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 32, N'SWAPPING_ASSET', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 33, N'IMPORT_ASSET', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 34, N'SOLD_SCRAPPED_ASSET', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 35, N'ASSET_REPLACEMENT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 36, N'ASSET_TRANSFER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 37, N'ASSET_RECONCILIATION', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 38, N'APPROVE_ASSETS', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 39, N'APPROVE_GATEPASS', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 40, N'ASSET_SUMMARY_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 41, N'AMC_WARRANTY_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 42, N'ASSET_DASHBOARD', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 43, N'CALL_LOG_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 44, N'ALLOCATED_RETURNABLE_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 45, N'DOCUMENT_MANAGEMENT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 46, N'CREATE_INITIAL_DETAILS', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 47, N'BULK_LABEL_PRINTING', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 48, N'MOVEMENT_REQUEST', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 49, N'MOVEMENT_APPROVE', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 50, N'MOVEMENT_CLEARANCE', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 51, N'MOVEMENT_RECEIVING', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 52, N'MOVEMENT_CLEARANCE_RECEIVING', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMF', 53, N'PROJECT_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 1, N'USER_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 2, N'CATEGORY_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 3, N'LOCATION_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 4, N'VENDOR_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 5, N'COMPANY_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 6, N'GROUP_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 7, N'EMPLOYEE_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 9, N'GROUP_RIGHTS', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 10, N'DEPARTMENT_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 11, N'ASSET_MASTER', 1, 1, 1, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 13, N'ASSET_ACQUISITION', 1, 1, 1, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 15, N'GATEPASS_GENERATION', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 16, N'VENDOR_ESCALATION_MATRIX', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 17, N'ASSET_ALLOCATION', 1, 1, 1, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 18, N'CHANGE_PASSWORD', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 19, N'VIEW_AMC', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 20, N'PAGE_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 22, N'CALL_LOG', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 23, N'PROCESS_MASTER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 24, N'VIEW_ASSET_LIST', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 25, N'VIEW_GATEPASS_LIST', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 27, N'ASSET_ALLOCATION_REPORT', 1, 1, 1, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 28, N'GATEPASS_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 29, N'ASSET_TRACKING_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 30, N'ASSET_STOCK_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 31, N'RETURNABLE_ASSET_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 32, N'SWAPPING_ASSET', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 33, N'IMPORT_ASSET', 1, 1, 1, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 34, N'SOLD_SCRAPPED_ASSET', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 35, N'ASSET_REPLACEMENT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 36, N'ASSET_TRANSFER', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 37, N'ASSET_RECONCILIATION', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 38, N'APPROVE_ASSETS', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 39, N'APPROVE_GATEPASS', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 40, N'ASSET_SUMMARY_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 41, N'AMC_WARRANTY_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 42, N'ASSET_DASHBOARD', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 43, N'CALL_LOG_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 44, N'ALLOCATED_RETURNABLE_REPORT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 45, N'DOCUMENT_MANAGEMENT', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 46, N'CREATE_INITIAL_DETAILS', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 47, N'BULK_LABEL_PRINTING', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 48, N'MOVEMENT_REQUEST', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 49, N'MOVEMENT_APPROVE', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 50, N'MOVEMENT_CLEARANCE', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 51, N'MOVEMENT_RECEIVING', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'CMFREGN', 52, N'MOVEMENT_CLEARANCE_RECEIVING', 0, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 1, N'USER_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 2, N'CATEGORY_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 3, N'LOCATION_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 4, N'VENDOR_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 5, N'COMPANY_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 6, N'GROUP_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 7, N'EMPLOYEE_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 9, N'GROUP_RIGHTS', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 10, N'DEPARTMENT_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 11, N'ASSET_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 13, N'ASSET_ACQUISITION', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 15, N'GATEPASS_GENERATION', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 16, N'VENDOR_ESCALATION_MATRIX', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 17, N'ASSET_ALLOCATION', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 18, N'CHANGE_PASSWORD', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 19, N'VIEW_AMC', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 20, N'PAGE_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 22, N'CALL_LOG', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 23, N'PROCESS_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 24, N'VIEW_ASSET_LIST', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 25, N'VIEW_GATEPASS_LIST', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 27, N'ASSET_ALLOCATION_REPORT', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 28, N'GATEPASS_REPORT', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 29, N'ASSET_TRACKING_REPORT', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 30, N'ASSET_STOCK_REPORT', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 31, N'RETURNABLE_ASSET_REPORT', 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 32, N'SWAPPING_ASSET', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 33, N'IMPORT_ASSET', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 34, N'SOLD_SCRAPPED_ASSET', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 35, N'ASSET_REPLACEMENT', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 36, N'ASSET_TRANSFER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 37, N'ASSET_RECONCILIATION', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 38, N'APPROVE_ASSETS', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 39, N'APPROVE_GATEPASS', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 40, N'ASSET_SUMMARY_REPORT', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 41, N'AMC_WARRANTY_REPORT', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 42, N'ASSET_DASHBOARD', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 43, N'CALL_LOG_REPORT', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 44, N'ALLOCATED_RETURNABLE_REPORT', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 45, N'DOCUMENT_MANAGEMENT', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 46, N'CREATE_INITIAL_DETAILS', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 47, N'BULK_LABEL_PRINTING', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 48, N'MOVEMENT_REQUEST', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 49, N'MOVEMENT_APPROVE', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 50, N'MOVEMENT_CLEARANCE', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 51, N'MOVEMENT_RECEIVING', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 52, N'MOVEMENT_CLEARANCE_RECEIVING', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'PM', 53, N'PROJECT_MASTER', 1, 0, 0, 0, 0)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 1, N'USER_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 2, N'CATEGORY_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 3, N'LOCATION_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 4, N'VENDOR_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 5, N'COMPANY_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 6, N'GROUP_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 7, N'EMPLOYEE_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 8, N'DEPRECIATION_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 9, N'GROUP_RIGHTS', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 10, N'DEPARTMENT_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 11, N'ASSET_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 12, N'EMPLOYEE_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 13, N'ASSET_ACQUISITION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 14, N'GENERAL_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 15, N'GATEPASS_GENERATION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 16, N'VENDOR_ESCALATION_MATRIX', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 17, N'ASSET_ALLOCATION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 18, N'CHANGE_PASSWORD', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 19, N'VIEW_AMC', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 20, N'PAGE_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 22, N'CALL_LOG', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 23, N'PROCESS_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 24, N'VIEW_ASSET_LIST', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 25, N'VIEW_GATEPASS_LIST', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 26, N'GENERATE_AMC', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 27, N'ASSET_ALLOCATION_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 28, N'GATEPASS_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 29, N'ASSET_TRACKING_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 30, N'ASSET_STOCK_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 31, N'RETURNABLE_ASSET_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 32, N'SWAPPING_ASSET', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 33, N'IMPORT_ASSET', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 34, N'SOLD_SCRAPPED_ASSET', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 35, N'ASSET_REPLACEMENT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 36, N'ASSET_TRANSFER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 37, N'ASSET_RECONCILIATION', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 38, N'APPROVE_ASSETS', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 39, N'APPROVE_GATEPASS', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 40, N'ASSET_SUMMARY_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 41, N'AMC_WARRANTY_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 42, N'ASSET_DASHBOARD', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 43, N'CALL_LOG_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 44, N'ALLOCATED_RETURNABLE_REPORT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'sysadmin', 45, N'DOCUMENT_MANAGEMENT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 46, N'CREATE_INITIAL_DETAILS', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 47, N'BULK_LABEL_PRINTING', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 48, N'MOVEMENT_REQUEST', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 49, N'MOVEMENT_APPROVE', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 50, N'MOVEMENT_CLEARANCE', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 51, N'MOVEMENT_RECEIVING', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 52, N'MOVEMENT_CLEARANCE_RECEIVING', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 53, N'PROJECT_MASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 1053, N'SUBPROJECTMASTER', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 1054, N'VIEW_MOVEMENT', 1, 1, 1, 1, 1)
INSERT [dbo].[GROUP_RIGHTS] ([COMP_CODE], [GROUP_CODE], [PAGE_CODE], [PAGE_NAME], [VIEW_RIGHTS], [SAVE_RIGHTS], [EDIT_RIGHTS], [DELETE_RIGHTS], [EXPORT_RIGHTS]) VALUES (N'WT', N'SYSADMIN', 1055, N'SearchAsset_Location', 1, 1, 1, 1, 1)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S1-00-00-00-00', N'Tower S1', N'', N'01', N'WT', N'Tower S1 of SJS1 ( 01 )', 1, 1, N'sysadmin', CAST(0x0000A97300BB92E3 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S1-1F-00-00-00', N'First Floor', N'01-S1-00-00-00-00', N'01', N'WT', N'Tower S1 of SJS1 ( 01 )	- 1F', 2, 1, N'sysadmin', CAST(0x0000A97300BC76D5 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S1-1F-AW-00-00', N'A Wing', N'01-S1-1F-00-00-00', N'01', N'WT', N'Tower S1 of SJS1 ( 01 )	- 1F - A Wing', 3, 1, N'sysadmin', CAST(0x0000A97300BE87A7 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S1-1F-BW-00-00', N'B Wing', N'01-S1-1F-00-00-00', N'01', N'WT', N'Tower S1 of SJS1 ( 01 )	- 1F - B Wing', 3, 1, N'sysadmin', CAST(0x0000A97300BEB867 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S1-1F-CW-00-00', N'C Wing', N'01-S1-1F-00-00-00', N'01', N'WT', N'Tower S1 of SJS1 ( 01 )	- 1F - C Wing', 3, 1, N'sysadmin', CAST(0x0000A97300BEE4D0 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S1-1F-DW-00-00', N'D Wing', N'01-S1-1F-00-00-00', N'01', N'WT', N'Tower S1 of SJS1 ( 01 )	- 1F - D Wing', 3, 1, N'sysadmin', CAST(0x0000A97300BEF907 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S1-GF-00-00-00', N'Ground Floor', N'01-S1-00-00-00-00', N'01', N'WT', N'Tower S1 of SJS1 ( 01 )	- GF', 2, 1, N'sysadmin', CAST(0x0000A97300BC54EB AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S1-GF-AW-00-00', N'A Wing', N'01-S1-GF-00-00-00', N'01', N'WT', N'Tower S1 of SJS1 ( 01 )	- GF - A Wing', 3, 1, N'sysadmin', CAST(0x0000A97300BD4184 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S1-GF-BW-00-00', N'B Wing', N'01-S1-GF-00-00-00', N'01', N'WT', N'Tower S1 of SJS1 ( 01 )	- GF - B Wing', 3, 1, N'sysadmin', CAST(0x0000A97300BDEC77 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S1-GF-CW-00-00', N'C Wing', N'01-S1-GF-00-00-00', N'01', N'WT', N'Tower S1 of SJS1 ( 01 )	- GF - C Wing', 3, 1, N'sysadmin', CAST(0x0000A97300BE173E AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S1-GF-DW-00-00', N'D Wing', N'01-S1-GF-00-00-00', N'01', N'WT', N'Tower S1 of SJS1 ( 01 )	- GF - D Wing', 3, 1, N'sysadmin', CAST(0x0000A97300BE3730 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S2-00-00-00-00', N'Tower S2', N'', N'01', N'WT', N'Tower S2', 1, 1, N'sysadmin', CAST(0x0000A97300C04F52 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S2-1F-00-00-00', N'First Floor', N'01-S2-00-00-00-00', N'01', N'WT', N'Tower S2 of SJS1 ( 01 )	- 1F', 2, 1, N'sysadmin', CAST(0x0000A97300E38204 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S2-1F-AW-00-00', N'A Wing', N'01-S2-1F-00-00-00', N'01', N'WT', N'Tower S2 of SJS1 ( 01 )	- 1F - A Wing', 3, 1, N'sysadmin', CAST(0x0000A97300E409BD AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S2-1F-BW-00-00', N'B Wing', N'01-S2-1F-00-00-00', N'01', N'WT', N'Tower S2 of SJS1 ( 01 )	- 1F - B Wing', 3, 1, N'sysadmin', CAST(0x0000A97300E45DFE AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S2-1F-CW-00-00', N'C Wing', N'01-S2-1F-00-00-00', N'01', N'WT', N'Tower S2 of SJS1 ( 01 )	- 1F - C Wing', 3, 1, N'sysadmin', CAST(0x0000A97300E4783C AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S2-1F-DW-00-00', N'D Wing', N'01-S2-1F-00-00-00', N'01', N'WT', N'Tower S2 of SJS1 ( 01 )	- 1F - D Wing', 3, 1, N'sysadmin', CAST(0x0000A97300E498F4 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S2-GF-00-00-00', N'Ground Floor', N'01-S2-00-00-00-00', N'01', N'WT', N'Tower S2 of SJS1 ( 01 )	- GF', 2, 1, N'sysadmin', CAST(0x0000A97300E582A8 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S2-GF-AW-00-00', N'A Wing', N'01-S2-GF-00-00-00', N'01', N'WT', N'Tower S2 of SJS1 ( 01 )	- GF - A Wing', 3, 1, N'sysadmin', CAST(0x0000A97300E5E084 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S2-GF-BW-00-00', N'B Wing', N'01-S2-GF-00-00-00', N'01', N'WT', N'Tower S2 of SJS1 ( 01 )	- GF - B Wing', 3, 1, N'sysadmin', CAST(0x0000A97300E5F79C AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S2-GF-CW-00-00', N'C Wing', N'01-S2-GF-00-00-00', N'01', N'WT', N'Tower S2 of SJS1 ( 01 )	- GF - C Wing', 3, 1, N'sysadmin', CAST(0x0000A97300E65F83 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'01-S2-GF-DW-00-00', N'D Wing', N'01-S2-GF-00-00-00', N'01', N'WT', N'Tower S2 of SJS1 ( 01 )	- GF - D Wing', 3, 1, N'sysadmin', CAST(0x0000A97300E68FB9 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-00-00-00-00', N'Tower S3', N'', N'02', N'WT', N'Tower S3', 1, 1, N'sysadmin', CAST(0x0000A97300F8F5CA AS DateTime), N'sysadmin', CAST(0x0000A9AE0144A914 AS DateTime))
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-10-00-00-00', N'Tenth Floor', N'02-S3-00-00-00-00', N'02', N'WT', N'Tower S3 - Tenth Floor', 2, 1, N'sysadmin', CAST(0x0000A98200CE212F AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-10-AW-00-00', N'A Wing', N'02-S3-10-00-00-00', N'02', N'WT', N'Tower S3 - Tenth Floor - A Wing', 3, 1, N'sysadmin', CAST(0x0000A98200CE40A1 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-10-BW-00-00', N'B Wing', N'02-S3-10-00-00-00', N'02', N'WT', N'Tower S3 - Tenth Floor - B Wing', 3, 1, N'sysadmin', CAST(0x0000A98200CE5181 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-10-CW-00-00', N'C Wing', N'02-S3-10-00-00-00', N'02', N'WT', N'Tower S3 - Tenth Floor - C Wing', 3, 1, N'sysadmin', CAST(0x0000A98200CE605A AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-10-DW-00-00', N'D Wing', N'02-S3-10-00-00-00', N'02', N'WT', N'Tower S3 - Tenth Floor - D Wing', 3, 1, N'sysadmin', CAST(0x0000A98200CE753A AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-11-00-00-00', N'Eleventh FLoor', N'02-S3-00-00-00-00', N'02', N'WT', N'Tower S3 - Eleventh Floor', 2, 1, N'sysadmin', CAST(0x0000A98200CD160F AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-11-AW-00-00', N'A Wing', N'02-S3-11-00-00-00', N'02', N'WT', N'Tower S3 - Eleventh Floor - A Wing', 3, 1, N'sysadmin', CAST(0x0000A98200CD81A3 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-11-BW-00-00', N'B Wing', N'02-S3-11-00-00-00', N'02', N'WT', N'Tower S3 - Eleventh Floor - B Wing', 3, 1, N'sysadmin', CAST(0x0000A98200CDAAE4 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-11-CW-00-00', N'C Wing', N'02-S3-11-00-00-00', N'02', N'WT', N'Tower S3 - Eleventh Floor - C Wing', 3, 1, N'sysadmin', CAST(0x0000A98200CDCBD9 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-11-DW-00-00', N'D Wing', N'02-S3-11-00-00-00', N'02', N'WT', N'Tower S3 - Eleventh Floor - D Wing', 3, 1, N'sysadmin', CAST(0x0000A98200CDEEA9 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-12-00-00-00', N'Twelfth Floor', N'02-S3-00-00-00-00', N'02', N'WT', N'Tower S3 - Twelfth Floor', 2, 1, N'sysadmin', CAST(0x0000A9760138AC26 AS DateTime), N'sysadmin', CAST(0x0000A9760138DBEF AS DateTime))
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-12-AW-00-00', N'A Wing', N'02-S3-12-00-00-00', N'02', N'WT', N'Tower S3 - Twelfth Floor - A Wing', 3, 1, N'sysadmin', CAST(0x0000A97601390A34 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-12-BW-00-00', N'B Wing', N'02-S3-12-00-00-00', N'02', N'WT', N'Tower S3 - Twelfth Floor - B Wing', 3, 1, N'sysadmin', CAST(0x0000A9760139449D AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-12-CW-00-00', N'C Wing', N'02-S3-12-00-00-00', N'02', N'WT', N'Tower S3 - Twelfth Floor - C Wing', 3, 1, N'sysadmin', CAST(0x0000A976013963D9 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-12-DW-00-00', N'D Wing', N'02-S3-12-00-00-00', N'02', N'WT', N'Tower S3 - Twelfth Floor - D Wing', 3, 1, N'sysadmin', CAST(0x0000A97601398D52 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-1F-00-00-00', N'First Floor', N'02-S3-00-00-00-00', N'02', N'WT', N'Tower S3 - First Floor', 2, 1, N'sysadmin', CAST(0x0000A97300FEB5D7 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-1F-AW-00-00', N'A Wing', N'02-S3-1F-00-00-00', N'02', N'WT', N'Tower S3 - First Floor - A Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FEE5D1 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-1F-BW-00-00', N'B Wing', N'02-S3-1F-00-00-00', N'02', N'WT', N'Tower S3 - First Floor - B Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FF07BD AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-1F-CW-00-00', N'C Wing', N'02-S3-1F-00-00-00', N'02', N'WT', N'Tower S3 - First Floor - C Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FF218D AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-1F-DW-00-00', N'D Wing', N'02-S3-1F-00-00-00', N'02', N'WT', N'Tower S3 - First Floor - D Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FF3CD5 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-2F-00-00-00', N'Second Floor', N'02-S3-00-00-00-00', N'02', N'WT', N'Tower S3 - Second Floor', 2, 1, N'sysadmin', CAST(0x0000A97300FF78D1 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-2F-AW-00-00', N'A Wing', N'02-S3-2F-00-00-00', N'02', N'WT', N'Tower S3 - Second Floor - A Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FFA718 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-2F-BW-00-00', N'B Wing', N'02-S3-2F-00-00-00', N'02', N'WT', N'Tower S3 - Second Floor - B Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FFC0D5 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-2F-CW-00-00', N'C Wing', N'02-S3-2F-00-00-00', N'02', N'WT', N'Tower S3 - Second Floor - C Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FFD0DE AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-2F-DW-00-00', N'D Wing', N'02-S3-2F-00-00-00', N'02', N'WT', N'Tower S3 - Second Floor - D Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FFE243 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-GF-00-00-00', N'Ground Floor', N'02-S3-00-00-00-00', N'02', N'WT', N'Tower S3 - Ground Floor', 2, 1, N'sysadmin', CAST(0x0000A97300F921A0 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-PF-00-00-00', N'Podium Floor', N'02-S3-00-00-00-00', N'02', N'WT', N'Tower S3 - Podium Floor', 2, 1, N'sysadmin', CAST(0x0000A97300FD3677 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-PF-AW-00-00', N'A Wing', N'02-S3-PF-00-00-00', N'02', N'WT', N'Tower S3 - Podium Floor - A Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FDC3C5 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-PF-BW-00-00', N'B Wing', N'02-S3-PF-00-00-00', N'02', N'WT', N'Tower S3 - Podium Floor - B Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FE1215 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-PF-CW-00-00', N'C Wing', N'02-S3-PF-00-00-00', N'02', N'WT', N'Tower S3 - Podium Floor - C Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FE2E67 AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-PF-DW-00-00', N'D Wing', N'02-S3-PF-00-00-00', N'02', N'WT', N'Tower S3 - Podium Floor - D Wing', 3, 1, N'sysadmin', CAST(0x0000A97300FE435D AS DateTime), NULL, NULL)
INSERT [dbo].[LOCATION_MASTER] ([LOC_CODE], [LOC_NAME], [PARENT_LOC_CODE], [STORAGE_LOC_CODE], [COMP_CODE], [DESCRIPTION], [LOC_LEVEL], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (N'02-S3-PF-DW-0T-00', N'test', N'02-S3-PF-DW-00-00', N'02', N'WT', N'test', 4, 1, N'sysadmin', CAST(0x0000A98400FEEFE5 AS DateTime), NULL, NULL)
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 1, N'0220181100001', CAST(0x0000A99D00000000 AS DateTime), N'cmfgroup', N'tttt')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 1, N'0220181100002', CAST(0x0000A99700000000 AS DateTime), N'sysadmin', N'1')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 1, N'0220181100003', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'aaaa')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 1, N'0220181100004', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'aa')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 1, N'0220181100006', CAST(0x0000A9BA00000000 AS DateTime), N'sysadmin', N'ddddd')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 1, N'0220181200001', CAST(0x0000A9B200000000 AS DateTime), N'sysadmin', N'fffff')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 1, N'0220181200003', CAST(0x0000A9AB00000000 AS DateTime), N'sysadmin', N'fffff')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 2, N'0220181100001', CAST(0x0000A99D00000000 AS DateTime), N'cmfgroup', N'ttt')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 2, N'0220181100002', CAST(0x0000A99700000000 AS DateTime), N'sysadmin', N'1')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 2, N'0220181100003', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'ffff')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 2, N'0220181100004', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'aaa')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 2, N'0220181200001', CAST(0x0000A9C100000000 AS DateTime), N'sysadmin', N'ffff')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 3, N'0220181100001', CAST(0x0000A99D00000000 AS DateTime), N'cmfgroup', N'yyyy')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 3, N'0220181100002', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'1')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 3, N'0220181100003', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'ffff')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 3, N'0220181100004', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'aaa')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 3, N'0220181200001', CAST(0x0000A9AC00000000 AS DateTime), N'sysadmin', N'fffff')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 4, N'0220181100001', CAST(0x0000A99D00000000 AS DateTime), N'cmfgroup', N'uuuu')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 4, N'0220181100002', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'1')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 4, N'0220181100003', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'ffff')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 4, N'0220181100004', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'aaa')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 4, N'0220181200001', CAST(0x0000A9BC00000000 AS DateTime), N'sysadmin', N'fff')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 5, N'0220181100001', CAST(0x0000A99600000000 AS DateTime), N'cmfgroup', N'iiii')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 5, N'0220181100002', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'1')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 5, N'0220181100003', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'ffff')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 5, N'0220181100004', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'aaa')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 5, N'0220181200001', CAST(0x0000A9BA00000000 AS DateTime), N'sysadmin', N'cccc')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 6, N'0220181100001', CAST(0x0000A99D00000000 AS DateTime), N'cmfgroup', N'oooo')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 6, N'0220181100002', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'1')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 6, N'0220181100003', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'ffff')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 6, N'0220181100004', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'aaa')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 6, N'0220181200001', CAST(0x0000A9B400000000 AS DateTime), N'sysadmin', N'ccccc')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 7, N'0220181100001', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'123')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 7, N'0220181100002', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'123')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 7, N'0220181100003', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'ffff')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 7, N'0220181100004', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'ddd')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 7, N'0220181200001', CAST(0x00009B8500000000 AS DateTime), N'sysadmin', N'xxxx')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 8, N'0220181100001', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'2222')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 8, N'0220181100002', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'123')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 8, N'0220181100003', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'www')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 8, N'0220181100004', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'ddd')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 8, N'0220181200001', CAST(0x0000A9AC00000000 AS DateTime), N'sysadmin', N'ddd')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 9, N'0220181100001', CAST(0x0000A99F00000000 AS DateTime), N'sysadmin', N'44444')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 9, N'0220181100002', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'123')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 9, N'0220181100003', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'ww')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 9, N'0220181100004', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'ddd')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 10, N'0220181100001', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'66666')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 10, N'0220181100002', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'123')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 10, N'0220181100003', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'wwww')
INSERT [dbo].[MOVEMENT_REQUEST_CLEARANCE] ([LOCATION_CODE], [CLEARANCE_CODE], [REQUEST_HDR_ID], [CREATED_ON], [CREATED_BY], [Remarks]) VALUES (N'02', 10, N'0220181100004', CAST(0x0000A99E00000000 AS DateTime), N'sysadmin', N'dddd')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (1, N'0220181100006', 2, N'Changes__02_1.txt', N'')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (2, N'0220181200001', 1, N'GET_Asset_PROC1_02_2.sql', N'TestOnly')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (3, N'0220181200001', 2, N'GET_Asset_PROC1_02_3.sql', N'Remark Added.ddddddd')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (4, N'0220181200001', 2, N'ViewMovement_Proc2_02_4.sql', N'Remark Added.ddddddd')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (5, N'0220181200001', 3, N'ViewMovement_Proc2_02_5.sql', N'Upload by CMF ')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (6, N'0220181200001', 4, N'ViewMovement_Proc2_02_6.sql', N'UPLOAD BY CMF CLEARA')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (7, N'0220181200001', 5, N'ViewMovement_Proc2_02_7.sql', N'Received Remarks')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (8, N'0220181200001', 6, N'GET_Asset_PROC1_02_8.sql', N'ssssss')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (9, N'0220181200003', 1, N'Changes__02_9.txt', N'test document')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (10, N'0220181200003', 3, N'Changes__02_10.txt', N'fffff')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (11, N'0220181200003', 4, N'Changes__02_11.txt', N'UPLOAD BY CMF CLEARA')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (12, N'0220181200003', 5, N'lastInLogic_02_12.sql', N'UPLOAD BY CMF CLEARA')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (13, N'0220181200008', 1, N'Test1_02_13.xlsx', N'')
INSERT [dbo].[MOVEMENT_REQUEST_DOC] ([REQUEST_DOC_ID], [REQUEST_HDR_ID], [DOC_TYPE], [DOC_NAME], [Remark]) VALUES (14, N'0220181200008', 3, N'Test1_02_14.xlsx', N'')
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (10, N'0220181100001', N'02-IT-LT-000001', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (11, N'0220181100001', N'02-IT-LT-000002', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (12, N'0220181100001', N'02-IT-LT-000003', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (13, N'0220181100001', N'02-IT-LT-000004', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (14, N'0220181100002', N'02-IT-HO-000003', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (15, N'0220181100002', N'02-IT-HO-000004', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (16, N'0220181100003', N'02-IT-HO-000005', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (17, N'0220181100003', N'02-IT-HO-000006', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (18, N'0220181100004', N'02-IT-HO-000007', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (19, N'0220181100005', N'02-IT-HO-000005', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (20, N'0220181100006', N'02-IT-HO-000006', NULL)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (21, N'0220181200001', N'02-IT-HO-000007', NULL)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (22, N'0220181200002', N'02-IT-LT-000001', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (23, N'0220181200003', N'02-IT-LT-000002', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (24, N'0220181200004', N'02-IT-LT-000001', 1)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (25, N'0220181200005', N'02-IT-LT-000002', NULL)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (26, N'0220181200006', N'02-IT-LT-000001', NULL)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (27, N'0220181200007', N'02-IT-LT-000003', NULL)
INSERT [dbo].[MOVEMENT_REQUEST_DTL] ([REQUEST_DTL_ID], [REQUEST_HDR_ID], [ASSET_CODE], [IsRequested]) VALUES (28, N'0220181200008', N'02-IT-LT-000004', NULL)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181100001', 1, N'', 1, N'01', N'Test Project', N'vp@gmail.com', N'12345', N'12345', 1, N'Approved BY PM', 1, N'Approved BY cmf', 1, 1, 11, CAST(0x0000A99D016CCE68 AS DateTime), N'sysadmin', CAST(0x0000A99D01820056 AS DateTime), N'PMGroup', CAST(0x0000A99D01833AC6 AS DateTime), N'cmfgroup', CAST(0x0000A99D01837AB4 AS DateTime), N'cmfgroup', NULL, NULL, CAST(0x0000A99E007591D3 AS DateTime), N'sysadmin', CAST(0x0000A99E00761C3C AS DateTime), N'sysadmin', 1, NULL)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181100002', 1, N'', 1, N'01', N'Test Project', N'eee@gmail.com', N'12345', N'12345', 1, N'Approved BY PM', 1, N'Approved BY cmf', 1, 1, 11, CAST(0x0000A99E007BF84C AS DateTime), N'sysadmin', CAST(0x0000A99E007C942F AS DateTime), N'PMGroup', CAST(0x0000A99E007CD015 AS DateTime), N'CMFGroup', CAST(0x0000A99E007F7024 AS DateTime), N'sysadmin', NULL, NULL, CAST(0x0000A99E0080458A AS DateTime), N'sysadmin', CAST(0x0000A99E008069F0 AS DateTime), N'sysadmin', 1, NULL)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181100003', 1, N'', 1, N'01', N'Test Project', N'test@gmIL.COM', N'12345', N'12345', 1, N'ssss', 1, N'aaa', 1, NULL, 11, CAST(0x0000A99E01157337 AS DateTime), N'sysadmin', CAST(0x0000A99E0116AB6B AS DateTime), N'p1', CAST(0x0000A99E0116C64F AS DateTime), N'c1', CAST(0x0000A99E01218F75 AS DateTime), N'sysadmin', NULL, NULL, CAST(0x0000A99E012660B3 AS DateTime), N'sysadmin', NULL, NULL, 1, NULL)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181100004', 1, N'', 1, N'01', N'Test Project', N'test1@gmail.com', N'12345', N'12345', 1, N'aaaa', 1, N'aaaa', 1, 1, 11, CAST(0x0000A99E013D2E8B AS DateTime), N'sysadmin', CAST(0x0000A99E013D497B AS DateTime), N'p1', CAST(0x0000A99E013D62F9 AS DateTime), N'c1', CAST(0x0000A99E013D988A AS DateTime), N'sysadmin', NULL, NULL, CAST(0x0000A99E013DB662 AS DateTime), N'sysadmin', CAST(0x0000A99E013DDB2B AS DateTime), N'sysadmin', 1, NULL)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181100005', 1, N'', 1, N'01', N'Test Project', N'vinay.pandey@barcodeindia.com', N'1234', N'1234', NULL, NULL, NULL, NULL, NULL, NULL, 11, CAST(0x0000A9A400D8F707 AS DateTime), N'sysadmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181100006', 1, N'', 1, N'01', N'Test Project', N'vinay.pandey@barcodeindia.com', N'1234', N'1234', 1, N'Remark Added.', 1, N'Upload by CMF', 1, NULL, 6, CAST(0x0000A9A800F6C7E9 AS DateTime), N'sysadmin', CAST(0x0000A9A800FA4809 AS DateTime), N'p1', CAST(0x0000A9AB007DF613 AS DateTime), N'c1', CAST(0x0000A9AB00814365 AS DateTime), N'sysadmin', NULL, NULL, CAST(0x0000A9AB00D694F8 AS DateTime), N'sysadmin', NULL, NULL, 1, 1)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181200001', 1, N'', 1, N'01', N'Test Project', N'vinay.pandey@barcodeindia.com', N'1234', N'1234', 1, N'Remark Added.', 1, N'Approved by CMF', 1, NULL, 6, CAST(0x0000A9AA00D66349 AS DateTime), N'sysadmin', CAST(0x0000A9AA012C0A13 AS DateTime), N'p1', CAST(0x0000A9AA012E8D5A AS DateTime), N'c1', CAST(0x0000A9AA01350550 AS DateTime), N'sysadmin', NULL, NULL, CAST(0x0000A9AA013ED3A8 AS DateTime), N'sysadmin', NULL, NULL, 1, 1)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181200002', 1, N'', 1, N'01', N'Test Project', N'vinay.pandey@barcodeindia.com', N'12345', N'12345', NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A9AB00B51206 AS DateTime), N'sysadmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181200003', 1, N'', 1, N'01', N'Test Project', N'vinay.pandey@barcodeindia.com', N'1234', N'1234', NULL, NULL, 1, N'Remark Added.ddddddd', 1, NULL, 6, CAST(0x0000A9AB00BA7B1E AS DateTime), N'sysadmin', NULL, NULL, CAST(0x0000A9AB00BB340E AS DateTime), N'c1', CAST(0x0000A9AB00BB9751 AS DateTime), N'sysadmin', NULL, NULL, CAST(0x0000A9AB00BBE39C AS DateTime), N'sysadmin', NULL, NULL, 1, 1)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181200004', 1, N'', 1, N'01', N'Test Project', N'vinay.pandey@gmail.com', N'1234', N'1234', 0, N'', 0, N'Rejected by CMF', NULL, NULL, 9, CAST(0x0000A9AE01212FFC AS DateTime), N'sysadmin', NULL, N'', CAST(0x0000A9AE013146FB AS DateTime), N'sysadmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181200005', 1, N'', 1, N'01', N'Test Project', N'vinay.pandey@vvv.com', N'1234', N'1234', NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A9AE012EB6E8 AS DateTime), N'sysadmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181200006', 1, N'', 1, N'01', N'Test Project', N'vinay.pandey@barcodeindia.com', N'1234', N'1234', NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A9AE013F5D05 AS DateTime), N'sysadmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181200007', 1, N'', 1, N'01', N'Test Project', N'vin@gamil.com', N'1234', N'1234', NULL, NULL, 1, N'xxxx', NULL, NULL, 3, CAST(0x0000A9AE014022DB AS DateTime), N'sysadmin', NULL, NULL, CAST(0x0000A9AE0177941B AS DateTime), N'sysadmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVEMENT_REQUEST_HDR] ([LOCATION_CODE], [REQUEST_HDR_ID], [IS_PERMANENT], [TRANSFER_TO], [IS_INTERUNIT], [LOCATION_TO], [PROJECT_CODE], [RECEIVER_EMAIL], [GST_NO], [PROJECT_COST_CENTRE], [PM_APPROVE], [PM_REMARKS], [CMF_APPROVE], [CMF_REMARKS], [IS_CLEARANCE], [REC_CLEARANCE], [STAGE], [CREATED_ON], [CREATED_BY], [PM_APPROVED_ON], [PM_APPROVED_BY], [CMF_APPROVED_ON], [CMF_APPROVED_BY], [CLEARANCE_ON], [CLEARANCE_BY], [GATEPASS_ON], [GATEPASS_BY], [RECEIVED_ON], [RECEIVED_BY], [REC_CLEARANCE_ON], [REC_CLEARANCE_BY], [MAIL_STATUS], [IsReceived]) VALUES (N'02', N'0220181200008', 1, N'', 1, N'01', N'Test Project', N'aaa@gmail.com', N'aaa@gmail.com', N'1234', NULL, NULL, 1, N'aaa', NULL, NULL, 3, CAST(0x0000A9AE017B402E AS DateTime), N'sysadmin', NULL, NULL, CAST(0x0000A9AE017C0BEC AS DateTime), N'sysadmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100001, N' H-?--rp^??', NULL, 0, 1, CAST(0x0000A99700CBE462 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100002, N'09-`b-C?-?? H??', NULL, 0, 1, CAST(0x0000A99700CD4B5E AS DateTime), N'', CAST(0x0000A99800CDD465 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100003, N' H-?--rp^?n', NULL, 0, 1, CAST(0x0000A99700CD5D08 AS DateTime), N'', CAST(0x0000A99700D0B480 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100005, N'09-`b-?-?? 
<E', NULL, 0, 1, CAST(0x0000A99700D08654 AS DateTime), N'', CAST(0x0000A9970145474B AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100007, N'09-`b-??-?? =?', NULL, 0, 1, CAST(0x0000A99700D77598 AS DateTime), N'', CAST(0x0000A99800D112C6 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100008, N'09-]?-?s-f?  A', NULL, 0, 1, CAST(0x0000A99700DC2C86 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100010, N'09-`b-C?-?? 	<x', NULL, 0, 1, CAST(0x0000A99700E6353E AS DateTime), N'', CAST(0x0000A99F01710A82 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100012, N'02-IT-HO-000098', NULL, 0, 1, CAST(0x0000A99701058076 AS DateTime), N'', CAST(0x0000A99701110643 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100013, N'02-IT-HO-000097', NULL, 0, 1, CAST(0x0000A99701058168 AS DateTime), N'', CAST(0x0000A997010BE7FA AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100023, N'??-?V-kG-???<?', NULL, 0, 1, CAST(0x0000A9970140A924 AS DateTime), N'', CAST(0x0000A9A000B54A56 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100024, N'INVALID', NULL, 0, 1, CAST(0x0000A9970144079A AS DateTime), N'', CAST(0x0000A9A000A6DDB0 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100026, N'09-`b-??-?  
!?', NULL, 0, 1, CAST(0x0000A997014A6642 AS DateTime), N'', CAST(0x0000A998013869D3 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100027, N'09-`b-??-q? z]', NULL, 0, 1, CAST(0x0000A9970150E6D1 AS DateTime), N'', CAST(0x0000A99801545D7A AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100028, N'09-`b-??->  S?', NULL, 0, 1, CAST(0x0000A997015DB40B AS DateTime), N'', CAST(0x0000A9980162DA6D AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100029, N'09-`b-??-?  ? ', NULL, 0, 1, CAST(0x0000A997015F2DBE AS DateTime), N'', CAST(0x0000A99F015E1755 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100030, N'09-`b-??-?? ;m?', NULL, 0, 1, CAST(0x0000A997015FAEA5 AS DateTime), N'', CAST(0x0000A99F016CABCB AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100033, N'09-`b-C?-+? ??', NULL, 0, 1, CAST(0x0000A9970167BA40 AS DateTime), N'', CAST(0x0000A99800B6952B AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100035, N'09-`b-??-?@ 
??', NULL, 0, 1, CAST(0x0000A99800304FD8 AS DateTime), N'', CAST(0x0000A9A000A4BE7F AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100036, N'09-`b-C?-?@ 	|_', NULL, 0, 1, CAST(0x0000A998007AA793 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100037, N'??-?-H-I??E?c', NULL, 0, 1, CAST(0x0000A99800857B69 AS DateTime), N'', CAST(0x0000A9980103A74F AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100038, N'09-`b-C?-?? 	A?', NULL, 0, 1, CAST(0x0000A998009C251D AS DateTime), N'', CAST(0x0000A9A00097F395 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100039, N'09-`b-??-?? ???', NULL, 0, 1, CAST(0x0000A99800A78FD6 AS DateTime), N'', CAST(0x0000A99F0155A052 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100040, N'09-]?-??-.?  ?m', NULL, 0, 1, CAST(0x0000A99800A80849 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100042, N'  -  -08-08270B', NULL, 0, 1, CAST(0x0000A99800ABE70E AS DateTime), N'', CAST(0x0000A99800AC5770 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100044, N'09-`b-C?-H? jv', NULL, 0, 1, CAST(0x0000A99800B15934 AS DateTime), N'', CAST(0x0000A9A000AF5AEE AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100045, N'09-`b-??-P  !??', NULL, 0, 1, CAST(0x0000A99800B159EB AS DateTime), N'', CAST(0x0000A9A000AF5A74 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100048, N'09-`b-??-?? L?', NULL, 0, 1, CAST(0x0000A99800B7C2F3 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100050, N'09-`b-??-?  Ub?', NULL, 0, 1, CAST(0x0000A99800BF5557 AS DateTime), N'', CAST(0x0000A99800C0617E AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100052, N'09-]?-?i-{   (Z', NULL, 0, 1, CAST(0x0000A99800C14BDB AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100053, N'09-`b-??-?? 5?H', NULL, 0, 1, CAST(0x0000A99800C33189 AS DateTime), N'', CAST(0x0000A99F011C2439 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100055, N'  -  - 0-80791M', NULL, 0, 1, CAST(0x0000A99800C55971 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100059, N'09-`b-??-?? *U', NULL, 0, 1, CAST(0x0000A99800D3F853 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100062, N'09-`b-??-G?  4?', NULL, 0, 1, CAST(0x0000A99800E6AD89 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100063, N'09-]?-??-?  5|', NULL, 0, 1, CAST(0x0000A99800E7C012 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100066, N'09-`b-??-?? ?><', NULL, 0, 1, CAST(0x0000A9980103F560 AS DateTime), N'', CAST(0x0000A99801096522 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100072, N'09-`b-??-:@ 4&', NULL, 0, 1, CAST(0x0000A99801280DA6 AS DateTime), N'', CAST(0x0000A9A000A08648 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100075, N'09-`b-??-q? t?', NULL, 0, 1, CAST(0x0000A998013AC015 AS DateTime), N'', CAST(0x0000A998013DCAD7 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100079, N'09-`b-C?-?? ?', NULL, 0, 1, CAST(0x0000A99801492A46 AS DateTime), N'', CAST(0x0000A99F01413908 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100083, N'09-`b-??-  ?U', NULL, 0, 1, CAST(0x0000A9980161C02F AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100088, N'09-`b-??-?? S/2', NULL, 0, 1, CAST(0x0000A99801707B1C AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100090, N'09-`b-C?-?  	dA', NULL, 0, 1, CAST(0x0000A9980181F294 AS DateTime), N'', CAST(0x0000A99F0180144C AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100092, N'09-]?-?m-  ,', NULL, 0, 1, CAST(0x0000A99F00E7337B AS DateTime), N'', CAST(0x0000A99F012F3728 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100093, N'09-`b-??-? 	?x', NULL, 0, 1, CAST(0x0000A99F00E8C0AE AS DateTime), N'', CAST(0x0000A99F012A9291 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100096, N'09-]?-?O-?  ]', NULL, 0, 1, CAST(0x0000A99F00ECEB47 AS DateTime), N'', CAST(0x0000A99F0144BCF8 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100102, N'09-`b-??-E? ?D', NULL, 0, 1, CAST(0x0000A99F0104ADB0 AS DateTime), N'', CAST(0x0000A9A0001C61F3 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100106, N'09-]?-?*-?  -?', NULL, 0, 1, CAST(0x0000A99F011673BD AS DateTime), N'', CAST(0x0000A99F014CC8A6 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100107, N'09-]?-?,-@ q1', NULL, 0, 1, CAST(0x0000A99F01178EA9 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100108, N'  -  -  -  ???', NULL, 0, 1, CAST(0x0000A99F01186851 AS DateTime), N'', CAST(0x0000A99F011A0F96 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100109, N'  -  -  -  ??l', NULL, 0, 1, CAST(0x0000A99F011868CB AS DateTime), N'', CAST(0x0000A99F01198CDC AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100110, N'  -  -  -  ???', NULL, 0, 1, CAST(0x0000A99F01186943 AS DateTime), N'', CAST(0x0000A99F01198D56 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100111, N'  -  -  -  ?^{', NULL, 0, 1, CAST(0x0000A99F011869BF AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100112, N'09-`b-??-?  1??', NULL, 0, 1, CAST(0x0000A99F0118F01A AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100117, N'09-`b-??-:@ 5?', NULL, 0, 1, CAST(0x0000A99F0119FB39 AS DateTime), N'', CAST(0x0000A9A000A65B4A AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100120, N'09-]?-?--=? ?y', NULL, 0, 1, CAST(0x0000A99F011A1CFC AS DateTime), N'', CAST(0x0000A99F011A3087 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100124, N'09-]?-?,-@ ??', NULL, 0, 1, CAST(0x0000A99F011F8A99 AS DateTime), N'', CAST(0x0000A9A000AD5E39 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100125, N'09-]?-?h-  ?}', NULL, 0, 1, CAST(0x0000A99F011FD3BD AS DateTime), N'', CAST(0x0000A99F013B1696 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100126, N'09-`a-??-"? ??', NULL, 0, 1, CAST(0x0000A99F011FD639 AS DateTime), N'', CAST(0x0000A99F013B183E AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100127, N'09-`b-??-?? 4d', NULL, 0, 1, CAST(0x0000A99F0120985F AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100128, N'09-]?-?,-@ r?', NULL, 0, 1, CAST(0x0000A99F0120BD93 AS DateTime), N'', CAST(0x0000A9A000818F94 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100129, N'09-`b-??-? 	??', NULL, 0, 1, CAST(0x0000A99F0121E186 AS DateTime), N'', CAST(0x0000A9A000963918 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100130, N'09-`b-??-q? b?', NULL, 0, 1, CAST(0x0000A99F0122B3B0 AS DateTime), N'', CAST(0x0000A9A00086B2AE AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100131, N'09-`b-??-?@ P ', NULL, 0, 1, CAST(0x0000A99F0124482A AS DateTime), N'', CAST(0x0000A9A000A7A6A6 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100132, N'09-`b-??-?? ;f?', NULL, 0, 1, CAST(0x0000A99F0124F9F0 AS DateTime), N'', CAST(0x0000A99F013451D1 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100134, N'04-I?-??-??  I', NULL, 0, 1, CAST(0x0000A99F012837F9 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100135, N'09-`b-??-?? ', NULL, 0, 1, CAST(0x0000A99F0128E632 AS DateTime), N'', CAST(0x0000A9A0009F7A1B AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100136, N'09-]?-??-?@ ?', NULL, 0, 1, CAST(0x0000A99F0129E287 AS DateTime), N'', CAST(0x0000A99F012B96F4 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100138, N'09-`a-??-E? ??', NULL, 0, 1, CAST(0x0000A99F012AF15A AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100142, N'09-]?-?--? ??', NULL, 0, 1, CAST(0x0000A99F012E0C07 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100144, N'09-`b-??-H@ !?', NULL, 0, 1, CAST(0x0000A99F012F7D60 AS DateTime), N'', CAST(0x0000A99F012F7FC0 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100146, N'09-`b-??-?? ??', NULL, 0, 1, CAST(0x0000A99F012FA29C AS DateTime), N'', CAST(0x0000A99F012FF4D5 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100148, N'09-`b-??-?  ??', NULL, 0, 1, CAST(0x0000A99F012FFC93 AS DateTime), N'', CAST(0x0000A9A000B21B6D AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100149, N'09-]?-??-?@ ??', NULL, 0, 1, CAST(0x0000A99F0130E61D AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100151, N'09-`b-??-?  ??', NULL, 0, 1, CAST(0x0000A99F01379961 AS DateTime), N'', CAST(0x0000A9A000A94769 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100153, N'09-`b-C?-?? H?', NULL, 0, 1, CAST(0x0000A99F01395263 AS DateTime), N'', CAST(0x0000A9A00099CDA6 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100157, N'09-`b-??-??5?.', NULL, 0, 1, CAST(0x0000A99F013C3E95 AS DateTime), N'', CAST(0x0000A99F017669CD AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100158, N'09-`b-??-?? ;??', NULL, 0, 1, CAST(0x0000A99F013E9AFB AS DateTime), N'', CAST(0x0000A9A0008F6C3E AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100159, N'09-`a-??-?? (g', NULL, 0, 1, CAST(0x0000A99F013F07AC AS DateTime), N'', CAST(0x0000A99F01760320 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100163, N'09-`b-??-@? ??', NULL, 0, 1, CAST(0x0000A99F01417DDB AS DateTime), N'', CAST(0x0000A9A000963148 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100164, N'09-`b-C?-F? 8Sw', NULL, 0, 1, CAST(0x0000A99F01431300 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100165, N'09-`b-??-?? ?ac', NULL, 0, 1, CAST(0x0000A99F0143851F AS DateTime), N'', CAST(0x0000A9A000A6F801 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100166, N'09-`b-?-Q? 0k<', NULL, 0, 1, CAST(0x0000A99F0143E2F6 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100168, N'09-`c-?-?? @??', NULL, 0, 1, CAST(0x0000A99F0146C437 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100170, N'09-`b-??-@? ?g', NULL, 0, 1, CAST(0x0000A99F014B2C7E AS DateTime), N'', CAST(0x0000A9A000B6E104 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100171, N'09-`b-??-A  4??', NULL, 0, 1, CAST(0x0000A99F014C316B AS DateTime), N'', CAST(0x0000A9A00018FFFD AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100173, N'09-`b-??-t@ 3Hj', NULL, 0, 1, CAST(0x0000A99F014E1630 AS DateTime), N'', CAST(0x0000A9A0009A704C AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100174, N'09-`b-??-:@ ?"', NULL, 0, 1, CAST(0x0000A99F0150517A AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100175, N'09-]?-?-i@ 
??', NULL, 0, 1, CAST(0x0000A99F01513372 AS DateTime), N'', CAST(0x0000A99F0151B365 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100176, N'09-`b-??-?? ??', NULL, 0, 1, CAST(0x0000A99F015133EB AS DateTime), N'', CAST(0x0000A99F0151AF9B AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100179, N'09-`b-??-?? S?', NULL, 0, 1, CAST(0x0000A99F0151B3DE AS DateTime), N'', CAST(0x0000A99F0151B54A AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100181, N'09-`b-??-?? ?q', NULL, 0, 1, CAST(0x0000A99F0152F112 AS DateTime), N'', CAST(0x0000A9A000B67DFE AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100186, N'09-`b-??-??  ?', NULL, 0, 1, CAST(0x0000A99F01584E47 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100189, N'09-`b-?-Y@ 
?', NULL, 0, 1, CAST(0x0000A99F0159CC54 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100191, N'09-`b-??-?@ 
?y', NULL, 0, 1, CAST(0x0000A99F015AB965 AS DateTime), N'', CAST(0x0000A9A0006D8280 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100192, N'09-]?-?i-{? ??', NULL, 0, 1, CAST(0x0000A99F015B9065 AS DateTime), N'', CAST(0x0000A9A00074EE3C AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100193, N'09-`b-??-?? ?', NULL, 0, 1, CAST(0x0000A99F015B90DE AS DateTime), N'', CAST(0x0000A9A00074EDC3 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100195, N'09-`b-??-?? G9', NULL, 0, 1, CAST(0x0000A99F015C82AA AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100196, N'09-`b-??-[@ ??', NULL, 0, 1, CAST(0x0000A99F015D0EAF AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100199, N'09-`b-??-@? ?q', NULL, 0, 1, CAST(0x0000A99F015EE338 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100200, N'09-]?-??-g  ,??', NULL, 0, 1, CAST(0x0000A99F01601182 AS DateTime), N'', CAST(0x0000A99F01611720 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100201, N'09-`b-??-??M??', NULL, 0, 1, CAST(0x0000A99F016011F8 AS DateTime), N'', CAST(0x0000A99F016117D6 AS DateTime), N'02')
GO
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100202, N'09-`c-C?-?? Jx?', NULL, 0, 1, CAST(0x0000A99F01601272 AS DateTime), N'', CAST(0x0000A99F0161184F AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100207, N'?R-?-?j-??Hk', NULL, 0, 1, CAST(0x0000A99F0160B289 AS DateTime), N'', CAST(0x0000A9A000843EB6 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100213, N'09-`b-??-?@ Q?', NULL, 0, 1, CAST(0x0000A99F01627956 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100214, N'09-`b-??-?? ?C8', NULL, 0, 1, CAST(0x0000A99F016279CF AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100215, N'?-?F-Sv-??8?+w', NULL, 0, 1, CAST(0x0000A99F0162AB1E AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100216, N'09-`c-?-? ??', NULL, 0, 1, CAST(0x0000A99F0163D93E AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100217, N'09-`b-C?-?@ 	5?', NULL, 0, 1, CAST(0x0000A99F016609A3 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100219, N'09-`b-??-?@ R?c', NULL, 0, 1, CAST(0x0000A99F017095D8 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100221, N'09-`b-??-o? ??', NULL, 0, 1, CAST(0x0000A99F0174E1CC AS DateTime), N'', CAST(0x0000A9A0006B8036 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100224, N'?b-??-??-<`?6?', NULL, 0, 1, CAST(0x0000A99F0177C8F9 AS DateTime), N'', CAST(0x0000A99F01784A28 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100228, N'09-`b-??-:@ L#:', NULL, 0, 1, CAST(0x0000A99F0180A071 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100229, N'09-`b-??-M? ]K', NULL, 0, 1, CAST(0x0000A99F0184BCDB AS DateTime), N'', CAST(0x0000A99F0184D526 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100231, N'09-`b-??-?  ?{', NULL, 0, 1, CAST(0x0000A99F0189CD2E AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100232, N'09-`b-??-?  ', NULL, 0, 1, CAST(0x0000A9A0000049F5 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100234, N'09-]?-?s->?  2', NULL, 0, 1, CAST(0x0000A9A0000F8220 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100235, N'09-`b-??-@? tf', NULL, 0, 1, CAST(0x0000A9A000130AE3 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100236, N'09-`b-??-A  4?)', NULL, 0, 1, CAST(0x0000A9A000130D7D AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100241, N'09-`b-C?-?@ I5', NULL, 0, 1, CAST(0x0000A9A0005055F9 AS DateTime), N'', CAST(0x0000A9A000679914 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100247, N'09-`b-??-Q? &??', NULL, 0, 1, CAST(0x0000A9A0007E6B0A AS DateTime), N'', CAST(0x0000A9A00094EED5 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100250, N'09-`b-??-1? ?', NULL, 0, 1, CAST(0x0000A9A00082C998 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100251, N'09-`b-??-?? ?+?', NULL, 0, 1, CAST(0x0000A9A00082CA11 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100254, N'09-`b-??-?? 
', NULL, 0, 1, CAST(0x0000A9A0008BCAC8 AS DateTime), N'', CAST(0x0000A9A0008C4D9E AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100256, N'09-`b-C?-I? ??', NULL, 0, 1, CAST(0x0000A9A0008DE7AE AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100258, N'09-`b-??-r? DJ%', NULL, 0, 1, CAST(0x0000A9A00090EA5C AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100266, N'09-`b-??-?? ?=', NULL, 0, 1, CAST(0x0000A9A0009A0DF0 AS DateTime), N'', CAST(0x0000A9A0009A67C6 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100269, N'09-`b-??-  ??', NULL, 0, 1, CAST(0x0000A9A0009DC305 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100273, N'09-`b-??-"@ %?', NULL, 0, 1, CAST(0x0000A9A000A54ACB AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100274, N'09-`b-??-?? ]@', NULL, 0, 1, CAST(0x0000A9A000A54B44 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100275, N'09-`b-??-:@ 5(', NULL, 0, 1, CAST(0x0000A9A000A588FA AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100279, N'09-]?-??-?? 
j?', NULL, 0, 1, CAST(0x0000A9A000A7A62A AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100283, N'09-`b-??-?? 	t?', NULL, 0, 1, CAST(0x0000A9A000A949E7 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100284, N'09-`b-??-E? b', NULL, 0, 1, CAST(0x0000A9A000A9C84B AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100285, N'09-]?-?i-{?  P?', NULL, 0, 1, CAST(0x0000A9A000A9C900 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100286, N'09-`b-??--? ??', NULL, 0, 1, CAST(0x0000A9A000AAD0F6 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100287, N'09-`b-??-?? -?', NULL, 0, 1, CAST(0x0000A9A000AD283A AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100289, N'09-`b-??-?? ??', NULL, 0, 1, CAST(0x0000A9A000AD5EB2 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100290, N'09-`b-??-?? +q', NULL, 0, 1, CAST(0x0000A9A000ADD6FE AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100291, N'09-`b-C?-?? 10', NULL, 0, 1, CAST(0x0000A9A000ADF647 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100292, N'09-]?-?J-?  ???', NULL, 0, 1, CAST(0x0000A9A000AE19E0 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'', 20181100299, N'09-`b-??-P  "
c', NULL, 0, 1, CAST(0x0000A9A000B6DEA3 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100002, N'02-IT-MO-000103', NULL, 0, 1, CAST(0x0000A9A000BBC08D AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100005, N'02-IT-CE-003015', NULL, 0, 1, CAST(0x0000A9A000C4B320 AS DateTime), N'', CAST(0x0000A9A000EE86A2 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100009, N'02-IT-CE-003011', N'01', 1, 1, CAST(0x0000A9A000F63403 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100010, N'02-IT-CE-003011', N'01', 1, 1, CAST(0x0000A9A000FCE897 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100011, N'02-IT-CE-003011', N'01', 1, 1, CAST(0x0000A9A000FED4C4 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100012, N'02-IT-CE-003015', NULL, 0, 1, CAST(0x0000A9A00104083B AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100013, N'02-IT-CE-003011', N'01', 1, 1, CAST(0x0000A9A001040B12 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100014, N'02-IT-CE-003005', N'01', 1, 1, CAST(0x0000A9A001040C40 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100015, N'02-IT-HO-000047', NULL, 0, 1, CAST(0x0000A9A0011154F5 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100016, N'02-IT-HO-000047', NULL, 0, 1, CAST(0x0000A9A0011E132B AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100017, N'02-IT-HO-000047', NULL, 0, 1, CAST(0x0000A9A0011F8FA7 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100018, N'02-IT-LT-000355', NULL, 0, 1, CAST(0x0000A9A001212E10 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100019, N'02-IT-LT-000348', NULL, 0, 1, CAST(0x0000A9A00121319A AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100020, N'02-IT-LT-000352', NULL, 0, 1, CAST(0x0000A9A00121320F AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100021, N'02-IT-LT-000349', NULL, 0, 1, CAST(0x0000A9A001213288 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100022, N'02-IT-LT-000354', NULL, 0, 1, CAST(0x0000A9A001213301 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100023, N'02-IT-LT-000355', NULL, 0, 1, CAST(0x0000A9A001223905 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100024, N'02-IT-LT-000348', NULL, 0, 1, CAST(0x0000A9A00122397E AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100025, N'02-IT-LT-000349', NULL, 0, 1, CAST(0x0000A9A0012239F7 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100026, N'02-IT-CE-003011', N'01', 1, 1, CAST(0x0000A9A0012AEB19 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100027, N'02-IT-CE-003015', NULL, 0, 1, CAST(0x0000A9A0012AEED7 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100028, N'02-IT-CE-003005', N'01', 1, 1, CAST(0x0000A9A0012AF12E AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100029, N'02-IT-CE-003005', N'01', 1, 1, CAST(0x0000A9A0012B9789 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100030, N'02-IT-CE-003011', N'01', 1, 1, CAST(0x0000A9A0012B9803 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100031, N'02-IT-CE-003015', NULL, 0, 1, CAST(0x0000A9A0012B9BFD AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100032, N'02-IT-CE-003015', NULL, 0, 1, CAST(0x0000A9A0012C2E4F AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100033, N'02-IT-CE-003011', N'01', 1, 1, CAST(0x0000A9A0012C2EC8 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100034, N'02-IT-CE-003005', N'01', 1, 1, CAST(0x0000A9A0012C2F41 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100035, N'02-IT-LT-000355', NULL, 0, 1, CAST(0x0000A9A101520741 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100036, N'02-IT-LT-000352', NULL, 0, 1, CAST(0x0000A9A1015207B9 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100037, N'02-IT-LT-000354', NULL, 0, 1, CAST(0x0000A9A101520832 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100038, N'02-IT-LT-000348', NULL, 0, 1, CAST(0x0000A9A101520923 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100039, N'02-IT-LT-000349', NULL, 0, 1, CAST(0x0000A9A10152099C AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100040, N'02-IT-LT-000355', NULL, 0, 1, CAST(0x0000A9A400B247FB AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100041, N'02-IT-LT-000348', NULL, 0, 1, CAST(0x0000A9A400B24875 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100042, N'02-IT-LT-000352', NULL, 0, 1, CAST(0x0000A9A400B248ED AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100043, N'02-IT-LT-000354', NULL, 0, 1, CAST(0x0000A9A400B249DF AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100044, N'02-IT-LT-000349', NULL, 0, 1, CAST(0x0000A9A400B24A57 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100045, N'02-IT-LT-000354', NULL, 0, 1, CAST(0x0000A9A400BB7524 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100101, N'02-IT-HO-000047', NULL, 0, 1, CAST(0x0000A99F00FC671B AS DateTime), N'', CAST(0x0000A9A000C045E0 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100302, N'02-IT-LT-000349', NULL, 0, 1, CAST(0x0000A9A70115B457 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100303, N'02-IT-LT-000354', NULL, 0, 1, CAST(0x0000A9A70115B4D0 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100304, N'02-IT-LT-000355', NULL, 0, 1, CAST(0x0000A9A70115B549 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100305, N'02-IT-LT-000348', NULL, 0, 1, CAST(0x0000A9A70115B5C4 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181100306, N'02-IT-LT-000352', NULL, 0, 1, CAST(0x0000A9A70115B639 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200145, N'02-IT-LT-000355', NULL, 0, 1, CAST(0x0000A9AB00C1E9CF AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200146, N'02-IT-LT-000349', NULL, 0, 1, CAST(0x0000A9AB00C1EA84 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200147, N'02-IT-LT-000354', NULL, 0, 1, CAST(0x0000A9AB00C1EB76 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200148, N'02-IT-LT-000352', NULL, 0, 1, CAST(0x0000A9AB00C1EBF3 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200149, N'02-IT-LT-000348', NULL, 0, 1, CAST(0x0000A9AB00C1EE47 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200170, N'02-IT-LT-000349', N'01', 1, 1, CAST(0x0000A9AB00CF03E7 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200171, N'02-IT-LT-000354', N'01', 1, 1, CAST(0x0000A9AB00CF0461 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200172, N'02-IT-LT-000348', N'01', 1, 1, CAST(0x0000A9AB00CF058D AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200173, N'02-IT-LT-000355', N'01', 1, 1, CAST(0x0000A9AB00CF0613 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200174, N'02-IT-LT-000352', N'01', 1, 1, CAST(0x0000A9AB00CF0680 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200209, N'02-IT-CE-003015', NULL, 0, 1, CAST(0x0000A9AB00F0FD2E AS DateTime), N'', CAST(0x0000A9AB00F302BE AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200210, N'02-IT-CE-003005', N'01', 1, 1, CAST(0x0000A9AB00F0FDA9 AS DateTime), N'', CAST(0x0000A9AB00FF022E AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200211, N'02-IT-CE-003011', N'01', 1, 1, CAST(0x0000A9AB00F0FE5C AS DateTime), N'', CAST(0x0000A9AB00FF02A8 AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200216, N'02-IT-CE-003005', N'01', 1, 1, CAST(0x0000A9AB00F2FD8B AS DateTime), N'', CAST(0x0000A9AB00FF022E AS DateTime), N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200218, N'02-IT-CE-003011', N'01', 1, 1, CAST(0x0000A9AB00F30372 AS DateTime), N'', CAST(0x0000A9AB00FF02A8 AS DateTime), N'02')
GO
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'02', 20181200222, N'02-IT-CE-003015', NULL, 0, NULL, CAST(0x0000A9AB00FF01B5 AS DateTime), N'', NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'SJS3', 1, N'02-IT-CE-000001', N'SJS1', 0, 1, CAST(0x0000A983010ACFC6 AS DateTime), NULL, NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'SJS3', 2, N'02-IT-CE-000002', N'SJS1', 0, 1, CAST(0x0000A983010ACFC7 AS DateTime), NULL, NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'SJS3', 3, N'02-IT-CE-000003', N'SJS1', 0, 1, CAST(0x0000A983010ACFC7 AS DateTime), NULL, NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'SJS3', 4, N'02-IT-CE-000004', N'SJS1', 0, 1, CAST(0x0000A983010ACFC7 AS DateTime), NULL, NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'SJS3', 5, N'02-IT-CE-000005', N'SJS1', 0, 1, CAST(0x0000A983010ACFC7 AS DateTime), NULL, NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'SJS3', 6, N'02-IT-CE-000006', N'SJS1', 0, 1, CAST(0x0000A983010ACFC7 AS DateTime), NULL, NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'SJS3', 7, N'02-IT-CE-000007', N'SJS1', 0, 1, CAST(0x0000A983010ACFC7 AS DateTime), NULL, NULL, N'02')
INSERT [dbo].[MOVEMENT_TAG_CHECK] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location]) VALUES (N'SJS3', 8, N'02-IT-CE-000008', N'SJS1', 0, 1, CAST(0x0000A983010ACFC7 AS DateTime), NULL, NULL, N'02')
INSERT [dbo].[MovementRequestConfig] ([RequestStage], [RequestOrder], [IsActive]) VALUES (N'PMApproval', 1, 0)
INSERT [dbo].[MovementRequestConfig] ([RequestStage], [RequestOrder], [IsActive]) VALUES (N'CMFApproval', 2, 1)
INSERT [dbo].[MovementRequestConfig] ([RequestStage], [RequestOrder], [IsActive]) VALUES (N'CMFClearance', 3, 1)
SET IDENTITY_INSERT [dbo].[mRunningSerialNo] ON 

INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (3, N'SJS3', N'MOVEMENT_REQUEST_HDR', N'0', 2018, 8, 1, N'3')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (4, N'', N'MOVEMENT_REQUEST_HDR', N'0', 2018, 8, 1, N'3')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (5, N'ECS1', N'MOVEMENT_REQUEST_HDR', N'0', 2018, 8, 1, N'31')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (8, N'ECS1', N'MOVEMENT_REQUEST_DTL', NULL, NULL, NULL, NULL, N'109')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (9, N'ECS1', N'MOVEMENT_REQUEST_DOC', NULL, NULL, NULL, NULL, N'144')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (10, N'ECS1', N'MOVEMENT_REQUEST_HDR', N'0', 2018, 9, 1, N'11')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (11, N'02', N'MOVEMENT_REQUEST_HDR', N'0', 2018, 10, 1, N'1')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (12, N'02', N'MOVEMENT_REQUEST_DTL', NULL, NULL, NULL, NULL, N'28')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (13, N'02', N'MOVEMENT_REQUEST_HDR', N'0', 2018, 11, 1, N'6')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (14, N'02', N'TAG', N'0', 2018, 11, 1, N'81')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (15, N'02', N'MOVEMENT_REQUEST_DOC', NULL, NULL, NULL, NULL, N'14')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (16, N'02', N'MOVEMENT_REQUEST_HDR', N'0', 2018, 12, 1, N'8')
SET IDENTITY_INSERT [dbo].[mRunningSerialNo] OFF
SET IDENTITY_INSERT [dbo].[PAGE_MASTER] ON 

INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (1, N'USER_MASTER', N'USER MASTER', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (2, N'CATEGORY_MASTER', N'CATEGORY MASTER', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (3, N'LOCATION_MASTER', N'LOCATION MASTER', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (4, N'VENDOR_MASTER', N'VENDOR MASTER', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (5, N'COMPANY_MASTER', N'COMPANY MASTER', N'WT01', NULL, NULL, N'bcil', CAST(0x0000A05900C6402D AS DateTime))
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (6, N'GROUP_MASTER', N'GROUP MASTER', N'WT01', NULL, NULL, N'bcil', CAST(0x0000A05900C968B3 AS DateTime))
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (7, N'EMPLOYEE_MASTER', N'EMPLOYEE MASTER', N'WT01', NULL, NULL, N'bcil', CAST(0x0000A05900C622FB AS DateTime))
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (9, N'GROUP_RIGHTS', N'GROUP RIGHTS', N'WT01', NULL, NULL, N'bcil', CAST(0x0000A05900C8817D AS DateTime))
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (10, N'DEPARTMENT_MASTER', N'DEPARTMENT MASTER', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (11, N'ASSET_MASTER', N'ASSET MASTER', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (13, N'ASSET_ACQUISITION', N'ASSET ACQUISITION', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (15, N'GATEPASS_GENERATION', N'GATE PASS GENERATION', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (16, N'VENDOR_ESCALATION_MATRIX', N'VENDOR ESCALATION MATRIX', N'WT01', NULL, NULL, N'sysadmin', CAST(0x0000A1FC010AD743 AS DateTime))
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (17, N'ASSET_ALLOCATION', N'ASSET ALLOCATION', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (18, N'CHANGE_PASSWORD', N'CHANGE PASSWORD', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (19, N'VIEW_AMC', N'VIEW AMC', N'WT01', NULL, NULL, N'sysadmin', CAST(0x0000A1FC010E983B AS DateTime))
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (20, N'PAGE_MASTER', N'PAGE MASTER', N'WT01', NULL, NULL, N'bcil', CAST(0x0000A0550122E754 AS DateTime))
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (22, N'CALL_LOG', N'CALL LOG DETAILS', N'WT01', N'bcil      ', CAST(0x0000A05A01158818 AS DateTime), NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (23, N'PROCESS_MASTER', N'PROCESS MASTER', N'WT01', N'bcil      ', CAST(0x0000A06301021942 AS DateTime), NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (24, N'VIEW_ASSET_LIST', N'VIEW ASSET LIST', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (25, N'VIEW_GATEPASS_LIST', N'VIEW GATEPASS LIST', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (27, N'ASSET_ALLOCATION_REPORT', N'ASSET ALLOCATION REPORT', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (28, N'GATEPASS_REPORT', N'GATEPASS REPORT', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (29, N'ASSET_TRACKING_REPORT', N'ASSET TRACKING REPORT', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (30, N'ASSET_STOCK_REPORT', N'ASSET STOCK REPORT', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (31, N'RETURNABLE_ASSET_REPORT', N'RETURNABLE ASSET REPORT', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (32, N'SWAPPING_ASSET', N'SWAPPING ASSET', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (33, N'IMPORT_ASSET', N'IMPORT/EXPORT ASSET', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (34, N'SOLD_SCRAPPED_ASSET', N'SOLD SCRAPPED ASSET', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (35, N'ASSET_REPLACEMENT', N'ASSET REPLACEMENT', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (36, N'ASSET_TRANSFER', N'ASSET TRANSFER', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (37, N'ASSET_RECONCILIATION', N'ASSET RECONCILIATION', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (38, N'APPROVE_ASSETS', N'APPROVE_ASSETS', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (39, N'APPROVE_GATEPASS', N'APPROVE_GATEPASS', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (40, N'ASSET_SUMMARY_REPORT', N'ASSET SUMMARY REPORT', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (41, N'AMC_WARRANTY_REPORT', N'AMC WARRANTY REPORT', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (42, N'ASSET_DASHBOARD', N'ASSET DASHBOARD', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (43, N'CALL_LOG_REPORT', N'CALL LOG REPORT', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (44, N'ALLOCATED_RETURNABLE_REPORT', N'ALLOCATED RETURNABLE REPORT', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (45, N'DOCUMENT_MANAGEMENT', N'DOCUMENT MANAGEMENT', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (46, N'CREATE_INITIAL_DETAILS', N'CREATE INITIAL DETAILS', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (47, N'BULK_LABEL_PRINTING', N'BULK_LABEL_PRINTING', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (48, N'MOVEMENT_REQUEST', N'MOVEMENT_REQUEST', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (49, N'MOVEMENT_APPROVE', N'MOVEMENT_APPROVE', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (50, N'MOVEMENT_CLEARANCE', N'MOVEMENT_CLEARANCE', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (51, N'MOVEMENT_RECEIVING', N'MOVEMENT_RECEIVING', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (52, N'MOVEMENT_CLEARANCE_RECEIVING', N'MOVEMENT_CLEARANCE_RECEIVING', N'WT01', NULL, NULL, NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (53, N'PROJECT_MASTER', N'Project Master Page', N'WT', N'sysadmin  ', CAST(0x0000A99C01268593 AS DateTime), NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (1053, N'SUBPROJECTMASTER', N'SUBPROJECTMASTER', N'WT', N'sysadmin  ', CAST(0x0000A99F00B0BC91 AS DateTime), NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (1054, N'VIEW_MOVEMENT', N'View Movement Request', N'WT', N'sysadmin  ', CAST(0x0000A9A900E5CB1C AS DateTime), NULL, NULL)
INSERT [dbo].[PAGE_MASTER] ([PAGE_CODE], [PAGE_NAME], [PAGE_DESCRIPTION], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (1055, N'SearchAsset_Location', N'SearchAsset_Location', N'WT01', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PAGE_MASTER] OFF
INSERT [dbo].[PLANT_MASTER] ([PLANT_CODE], [CITY_CODE], [PLANT_NAME], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'BDC', N'DL', N'BDC', N'Bangalore Development Center1', 1, CAST(0x0000A92D00DECD58 AS DateTime), N'sysadmin', CAST(0x0000A9AE01467128 AS DateTime), N'sysadmin')
INSERT [dbo].[PLANT_MASTER] ([PLANT_CODE], [CITY_CODE], [PLANT_NAME], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'CODC', N'BG', N'CODC', N'CODC', 1, CAST(0x0000A92F00CF8867 AS DateTime), N'Sysadmin', CAST(0x0000A9A900CD5BBC AS DateTime), N'sysadmin')
INSERT [dbo].[PRINTING_LOG] ([ASSET_CODE], [SERIAL_CODE], [ASSET_ID], [ASSET_LOCATION], [PO_NUMBER], [COMP_CODE], [PRINT_COUNT], [PORT_NO], [MODEL_NAME], [ASSET_MAKE], [DESCRIPTION]) VALUES (N'02-IT-HO-000001', N'INM08111R6Z', N'90024612', N'02-S3-1F-AW-00-00', N'9000002292', N'WT        ', 8, N'', N'VOIP', NULL, NULL)
INSERT [dbo].[PRINTING_LOG] ([ASSET_CODE], [SERIAL_CODE], [ASSET_ID], [ASSET_LOCATION], [PO_NUMBER], [COMP_CODE], [PRINT_COUNT], [PORT_NO], [MODEL_NAME], [ASSET_MAKE], [DESCRIPTION]) VALUES (N'02-IT-LT-000001', N'R8LTA7E', N'90335905', N'02-S3-12-BW-00-00', N'', N'WT        ', 4, N'80', N'Laptop', NULL, NULL)
INSERT [dbo].[PRINTING_LOG] ([ASSET_CODE], [SERIAL_CODE], [ASSET_ID], [ASSET_LOCATION], [PO_NUMBER], [COMP_CODE], [PRINT_COUNT], [PORT_NO], [MODEL_NAME], [ASSET_MAKE], [DESCRIPTION]) VALUES (N'02-IT-LT-000008', N'R8KVA4A', N'90287578', N'02-S3-12-BW-00-00', N'', N'WT        ', 1, N'80', N'Lenovo', NULL, NULL)
INSERT [dbo].[PRINTING_LOG] ([ASSET_CODE], [SERIAL_CODE], [ASSET_ID], [ASSET_LOCATION], [PO_NUMBER], [COMP_CODE], [PRINT_COUNT], [PORT_NO], [MODEL_NAME], [ASSET_MAKE], [DESCRIPTION]) VALUES (N'02-IT-HO-000001', N'INM08111R6Z', N'90024612', N'02-S3-1F-AW-00-00', N'9000002292', N'WT        ', 8, N'', N'VOIP', NULL, NULL)
INSERT [dbo].[PRINTING_LOG] ([ASSET_CODE], [SERIAL_CODE], [ASSET_ID], [ASSET_LOCATION], [PO_NUMBER], [COMP_CODE], [PRINT_COUNT], [PORT_NO], [MODEL_NAME], [ASSET_MAKE], [DESCRIPTION]) VALUES (N'02-IT-LT-000001', N'R8LTA7E', N'90335905', N'02-S3-12-BW-00-00', N'', N'WT        ', 4, N'80', N'Laptop', NULL, NULL)
INSERT [dbo].[PRINTING_LOG] ([ASSET_CODE], [SERIAL_CODE], [ASSET_ID], [ASSET_LOCATION], [PO_NUMBER], [COMP_CODE], [PRINT_COUNT], [PORT_NO], [MODEL_NAME], [ASSET_MAKE], [DESCRIPTION]) VALUES (N'02-IT-LT-000008', N'R8KVA4A', N'90287578', N'02-S3-12-BW-00-00', N'', N'WT        ', 1, N'80', N'Lenovo', NULL, NULL)
INSERT [dbo].[PROJECT_MASTER] ([LOCATION_CODE], [PROJECT_CODE], [PROJECT_NAME], [REMARKS], [PROJECT_MANAGER], [PM_EMAIL], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY], [DEPT_CODE], [COMP_CODE]) VALUES (N'02', N'CISCO', N'CISCO', N'', N'HIMAX', N'histephe@cisco.com', 1, CAST(0x0000A973010559F4 AS DateTime), N'sysadmin', CAST(0x0000A98200C8E3BB AS DateTime), N'sysadmin', N'WPROJ', NULL)
INSERT [dbo].[PROJECT_MASTER] ([LOCATION_CODE], [PROJECT_CODE], [PROJECT_NAME], [REMARKS], [PROJECT_MANAGER], [PM_EMAIL], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY], [DEPT_CODE], [COMP_CODE]) VALUES (N'02', N'DEMO', N'Demo Project', N'', N'DEMO MANAGER', N'DEMO@GMAIL_.COM', 1, CAST(0x0000A985011D9528 AS DateTime), N'sysadmin', NULL, NULL, N'WPROJ', N'WT')
INSERT [dbo].[PROJECT_MASTER] ([LOCATION_CODE], [PROJECT_CODE], [PROJECT_NAME], [REMARKS], [PROJECT_MANAGER], [PM_EMAIL], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY], [DEPT_CODE], [COMP_CODE]) VALUES (N'02', N'FUJITSU', N'FUJITSU', N'', N'SRINIVASA.', N'SRINIVASA@WIPRO.COM', 1, CAST(0x0000A98200CBB1FB AS DateTime), N'sysadmin', NULL, NULL, N'WPROJ', NULL)
INSERT [dbo].[PROJECT_MASTER] ([LOCATION_CODE], [PROJECT_CODE], [PROJECT_NAME], [REMARKS], [PROJECT_MANAGER], [PM_EMAIL], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY], [DEPT_CODE], [COMP_CODE]) VALUES (N'02', N'MEDTRONIC', N'MEDTRONIC', N'', N'BASIL.DIAS', N'BASIL.DIAS@WIPRO.COM', 1, CAST(0x0000A98200CBD1AF AS DateTime), N'sysadmin', NULL, NULL, N'WPROJ', NULL)
INSERT [dbo].[PROJECT_MASTER] ([LOCATION_CODE], [PROJECT_CODE], [PROJECT_NAME], [REMARKS], [PROJECT_MANAGER], [PM_EMAIL], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY], [DEPT_CODE], [COMP_CODE]) VALUES (N'01', N'PRJ1', N'Test Project', N'', N'VINAY', N'VINAYP771@GMAIL.COM', 1, CAST(0x0000A99D01240CB8 AS DateTime), N'sysadmin', NULL, NULL, N'WPROJ', N'WT')
SET IDENTITY_INSERT [dbo].[STORAGE_LOCATION_MASTER] ON 

INSERT [dbo].[STORAGE_LOCATION_MASTER] ([UNIQUE_ADDRESS_ID], [STORAGE_LOC_CODE], [STORAGE_LOC_NAME], [CMF_GROUP_EMAIL], [GSG_GROUP_EMAIL], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY], [SAP_LOC_CODE]) VALUES (8, N'01', N'SJS1', N'subrahamanya.bhat3@wipro.com', N'ramesh.pathak@wipro.com', N'Bangalore - Sarjapur SEZ Unit I', 1, CAST(0x0000A970010B8382 AS DateTime), N'sysadmin', NULL, NULL, N'SJS1')
INSERT [dbo].[STORAGE_LOCATION_MASTER] ([UNIQUE_ADDRESS_ID], [STORAGE_LOC_CODE], [STORAGE_LOC_NAME], [CMF_GROUP_EMAIL], [GSG_GROUP_EMAIL], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY], [SAP_LOC_CODE]) VALUES (9, N'02', N'SJS3', N'subrahamanya.bhat3@wipro.com', N'ramesh.pathak@wipro.com', N'Bangalore - Sarjapur SEZ Unit II', 1, CAST(0x0000A970010BC9E2 AS DateTime), N'sysadmin', NULL, NULL, N'SJS3')
INSERT [dbo].[STORAGE_LOCATION_MASTER] ([UNIQUE_ADDRESS_ID], [STORAGE_LOC_CODE], [STORAGE_LOC_NAME], [CMF_GROUP_EMAIL], [GSG_GROUP_EMAIL], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY], [SAP_LOC_CODE]) VALUES (10, N'03', N'SJS4', N'subrahamanya.bhat3@wipro.com', N'ramesh.pathak@wipro.com', N'Bangalore - Sarjapur SEZ Unit III', 1, CAST(0x0000A970010C02ED AS DateTime), N'sysadmin', NULL, NULL, N'SJS4')
INSERT [dbo].[STORAGE_LOCATION_MASTER] ([UNIQUE_ADDRESS_ID], [STORAGE_LOC_CODE], [STORAGE_LOC_NAME], [CMF_GROUP_EMAIL], [GSG_GROUP_EMAIL], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY], [SAP_LOC_CODE]) VALUES (11, N'04', N'SJS5', N'subrahamanya.bhat3@wipro.com', N'ramesh.pathak@wipro.com', N'Bangalore - Sarjapur SEZ Unit IV', 1, CAST(0x0000A970010C3518 AS DateTime), N'sysadmin', NULL, NULL, N'SJS5')
SET IDENTITY_INSERT [dbo].[STORAGE_LOCATION_MASTER] OFF
INSERT [dbo].[SUB_PROJECT_MASTER] ([SUB_PROJECT_CODE], [SUB_PROJECT_NAME], [PROJECT_CODE], [PROJECT_MANAGER], [LOCATION_CODE], [ASSIGN_EMPLOYEE], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'CIS-CIS-PJ-CISCO_NANO_IO', N'CISPJNANO', N'CISCO', N'deepak.ladha@wipro.com', N'02', NULL, N'', 1, CAST(0x0000A98200C9F2C2 AS DateTime), N'sysadmin', CAST(0x0000A98200CB4D32 AS DateTime), N'sysadmin')
INSERT [dbo].[SUB_PROJECT_MASTER] ([SUB_PROJECT_CODE], [SUB_PROJECT_NAME], [PROJECT_CODE], [PROJECT_MANAGER], [LOCATION_CODE], [ASSIGN_EMPLOYEE], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'CISCO', N'CISCO', N'CISCO', N'histephe@cisco.com', N'02', NULL, N'', 1, CAST(0x0000A97301057C32 AS DateTime), N'sysadmin', CAST(0x0000A98200CB604A AS DateTime), N'sysadmin')
INSERT [dbo].[SUB_PROJECT_MASTER] ([SUB_PROJECT_CODE], [SUB_PROJECT_NAME], [PROJECT_CODE], [PROJECT_MANAGER], [LOCATION_CODE], [ASSIGN_EMPLOYEE], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'CISCO', N'CISCO', N'WIPRO', N'histephe@cisco.com', N'SJS3', NULL, N'', 1, CAST(0x0000A96C0120AD64 AS DateTime), N'sysadmin', CAST(0x0000A98200CB604A AS DateTime), N'sysadmin')
INSERT [dbo].[SUB_PROJECT_MASTER] ([SUB_PROJECT_CODE], [SUB_PROJECT_NAME], [PROJECT_CODE], [PROJECT_MANAGER], [LOCATION_CODE], [ASSIGN_EMPLOYEE], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'CISCO_SJS3', N'CISCO Project', N'CISCO_PROJ', N'Chandarappa', N'St', NULL, N'', 1, CAST(0x0000A96C01158C43 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[SUB_PROJECT_MASTER] ([SUB_PROJECT_CODE], [SUB_PROJECT_NAME], [PROJECT_CODE], [PROJECT_MANAGER], [LOCATION_CODE], [ASSIGN_EMPLOYEE], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'CISICOEDVTLAB', N'Cisico EDVT LAB', N'CISCO', N'lakshman.chandrappa@wipro', N'02', NULL, N'', 1, CAST(0x0000A98200CC4029 AS DateTime), N'sysadmin', NULL, NULL)
INSERT [dbo].[SUB_PROJECT_MASTER] ([SUB_PROJECT_CODE], [SUB_PROJECT_NAME], [PROJECT_CODE], [PROJECT_MANAGER], [LOCATION_CODE], [ASSIGN_EMPLOYEE], [REMARKS], [ACTIVE], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (N'PRJ001', N'PRJ001', N'CISCO', N'Balkishan sharma', N'ECS1', NULL, N'', 1, CAST(0x0000A92F000087DE AS DateTime), N'sysadmin', CAST(0x0000A93B01321CFB AS DateTime), N'Sysadmin')
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 1, N'02-IT-LT-000001', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601242D48 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 2, N'02-IT-LT-000002', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601242D48 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 3, N'02-IT-LT-000003', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601242D48 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 4, N'02-IT-LT-000004', NULL, 1, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601242D48 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 5, N'02-IT-HO-000005', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601242D48 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 6, N'02-IT-HO-000006', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601242D48 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 7, N'02-IT-HO-000007', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601242D48 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 8, N'02-IT-HO-000008', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601242D48 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100046, N'02-IT-LT-000001', NULL, 0, 0, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C23ADF AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100047, N'02-IT-LT-000002', NULL, 0, 0, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C23ADF AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100048, N'02-IT-LT-000003', NULL, 0, 0, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C23ADF AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100049, N'02-IT-LT-000004', NULL, 0, 0, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C23ADF AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100046, N'02-IT-LT-000001', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C35096 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100047, N'02-IT-LT-000002', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C35096 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100048, N'02-IT-LT-000003', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C35096 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100049, N'02-IT-LT-000004', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C35096 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100046, N'02-IT-LT-000001', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C40341 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100047, N'02-IT-LT-000002', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C40341 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100048, N'02-IT-LT-000003', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C40341 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100049, N'02-IT-LT-000004', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C40341 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100078, N'02-IT-LT-000001', NULL, 0, 0, CAST(0x0000A9A700C56AA2 AS DateTime), N'', NULL, N'02', CAST(0x0000A9AB00C77E8C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100079, N'02-IT-LT-000002', NULL, 0, 0, CAST(0x0000A9A700C56AA3 AS DateTime), N'', NULL, N'02', CAST(0x0000A9AB00C77E8C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100080, N'02-IT-LT-000003', NULL, 0, 0, CAST(0x0000A9A700C56AA3 AS DateTime), N'', NULL, N'02', CAST(0x0000A9AB00C77E8C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100081, N'02-IT-LT-000004', NULL, 0, 0, CAST(0x0000A9A700C56AA4 AS DateTime), N'', NULL, N'02', CAST(0x0000A9AB00C77E8C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 1, N'02-IT-LT-000001', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601243F44 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 2, N'02-IT-LT-000002', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601243F44 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 3, N'02-IT-LT-000003', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601243F44 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 4, N'02-IT-LT-000004', NULL, 1, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601243F44 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 5, N'02-IT-HO-000005', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601243F44 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 6, N'02-IT-HO-000006', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601243F44 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 7, N'02-IT-HO-000007', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601243F44 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 8, N'02-IT-HO-000008', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A601243F44 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 1, N'02-IT-LT-000001', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60123F4AB AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 2, N'02-IT-LT-000002', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60123F4AB AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 3, N'02-IT-LT-000003', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60123F4AB AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 4, N'02-IT-LT-000004', NULL, 1, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60123F4AB AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 5, N'02-IT-HO-000005', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60123F4AB AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 6, N'02-IT-HO-000006', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60123F4AB AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 7, N'02-IT-HO-000007', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60123F4AB AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 8, N'02-IT-HO-000008', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60123F4AB AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 1, N'02-IT-LT-000001', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60124625C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 2, N'02-IT-LT-000002', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60124625C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 3, N'02-IT-LT-000003', NULL, 1, 1, CAST(0x0000A98500CD3079 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60124625C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 4, N'02-IT-LT-000004', NULL, 1, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60124625C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 5, N'02-IT-HO-000005', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60124625C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 6, N'02-IT-HO-000006', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60124625C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 7, N'02-IT-HO-000007', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60124625C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 8, N'02-IT-HO-000008', NULL, 0, 1, CAST(0x0000A98500CD307A AS DateTime), NULL, NULL, NULL, CAST(0x0000A9A60124625C AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100046, N'02-IT-LT-000001', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C2B255 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100047, N'02-IT-LT-000002', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C2B255 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100048, N'02-IT-LT-000003', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C2B255 AS DateTime))
INSERT [dbo].[UnAuthrizeLaptopSendMailHistory] ([LOCATION_CODE], [MOVE_TAG_ID], [ASSET_CODE], [LOCATION_TO], [STATUS], [EMAIL_FLAG], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [Reader_Location], [SendOn]) VALUES (N'02', 20181100049, N'02-IT-LT-000004', NULL, 0, 1, CAST(0x0000A9A200C14226 AS DateTime), N'', NULL, N'02', CAST(0x0000A9A700C2B255 AS DateTime))
INSERT [dbo].[USER_ACCOUNTS] ([USER_ID], [USER_NAME], [PASSWORD], [USER_EMAIL], [COMP_CODE], [LOCATION_CODE], [GROUP_CODE], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [TECHOPS_EMAIL], [USER_SESSION_ID]) VALUES (N'c1', N'c1', N'c2Fn', N'c1@gmaiddl.com', N'WT', N'01', N'CMF', 1, N'sysadmin', CAST(0x0000A99E01168E29 AS DateTime), N'sysadmin', CAST(0x0000A9AE0143FB80 AS DateTime), N'c1@gmail.com', NULL)
INSERT [dbo].[USER_ACCOUNTS] ([USER_ID], [USER_NAME], [PASSWORD], [USER_EMAIL], [COMP_CODE], [LOCATION_CODE], [GROUP_CODE], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [TECHOPS_EMAIL], [USER_SESSION_ID]) VALUES (N'CMFGROUP', N'CMFGROUP', N'MTIzNDU=', N'CMF@gmail.com', N'WT', N'02', N'CMF', 1, N'PMGroup', CAST(0x0000A99D01828D94 AS DateTime), NULL, NULL, N'CMF@gmail.com', NULL)
INSERT [dbo].[USER_ACCOUNTS] ([USER_ID], [USER_NAME], [PASSWORD], [USER_EMAIL], [COMP_CODE], [LOCATION_CODE], [GROUP_CODE], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [TECHOPS_EMAIL], [USER_SESSION_ID]) VALUES (N'p1', N'p1', N'MTIz', N'pm@gmail.com', N'WT', N'02', N'PM', 1, N'sysadmin', CAST(0x0000A99E01166734 AS DateTime), NULL, NULL, N'pm@gmail.com', NULL)
INSERT [dbo].[USER_ACCOUNTS] ([USER_ID], [USER_NAME], [PASSWORD], [USER_EMAIL], [COMP_CODE], [LOCATION_CODE], [GROUP_CODE], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [TECHOPS_EMAIL], [USER_SESSION_ID]) VALUES (N'PMGroup', N'PMGroup', N'c2Fn', N'PMGroup@gmail.com', N'WT', N'01', N'PM', 1, N'sysadmin', CAST(0x0000A99D017E08F4 AS DateTime), NULL, NULL, N'PMGroup@gmail.com', NULL)
INSERT [dbo].[USER_ACCOUNTS] ([USER_ID], [USER_NAME], [PASSWORD], [USER_EMAIL], [COMP_CODE], [LOCATION_CODE], [GROUP_CODE], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [TECHOPS_EMAIL], [USER_SESSION_ID]) VALUES (N'SJS3User1', N'SJS3User1', N'd2lwcm9AMTIz', N'ganesh.v71@wipro.com', N'WT', N'02', N'CMFREGN', 1, N'sysadmin', CAST(0x0000A97A00D2EE65 AS DateTime), NULL, NULL, N'ajaykumar.veettil@wipro.com', NULL)
INSERT [dbo].[USER_ACCOUNTS] ([USER_ID], [USER_NAME], [PASSWORD], [USER_EMAIL], [COMP_CODE], [LOCATION_CODE], [GROUP_CODE], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [TECHOPS_EMAIL], [USER_SESSION_ID]) VALUES (N'SJS3User2', N'SJS3User2', N'V2lwcm9AMTIz', N'subrahmanya.bhat3@wipro.com', N'WT', N'02', N'CMFREGN', 1, N'sysadmin', CAST(0x0000A97A00EE6536 AS DateTime), NULL, NULL, N'ganesh.v71@wipro.com', NULL)
INSERT [dbo].[USER_ACCOUNTS] ([USER_ID], [USER_NAME], [PASSWORD], [USER_EMAIL], [COMP_CODE], [LOCATION_CODE], [GROUP_CODE], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [TECHOPS_EMAIL], [USER_SESSION_ID]) VALUES (N'SJS3User3', N'SJS3User3', N'V2lwcm9AMTIz', N'ramu.c79@wipro.com', N'WT', N'02', N'CMFREGN', 1, N'sysadmin', CAST(0x0000A97C00BA4874 AS DateTime), NULL, NULL, N'subrahmanya.bhat3@wipro.com', NULL)
INSERT [dbo].[USER_ACCOUNTS] ([USER_ID], [USER_NAME], [PASSWORD], [USER_EMAIL], [COMP_CODE], [LOCATION_CODE], [GROUP_CODE], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [TECHOPS_EMAIL], [USER_SESSION_ID]) VALUES (N'Sysadmin', N'Sysadmin', N'c2Fn', N'amit.chaubay@barcodeindia.com', N'WT', N'01', N'SYSADMIN', 1, N'e3000435', CAST(0x0000A0FD00C36EB1 AS DateTime), N'sysadmin', CAST(0x0000A10B00D75F6A AS DateTime), N'amit.chaubay@barcodeindia.com', N'')
INSERT [dbo].[USER_ACCOUNTS] ([USER_ID], [USER_NAME], [PASSWORD], [USER_EMAIL], [COMP_CODE], [LOCATION_CODE], [GROUP_CODE], [ACTIVE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [TECHOPS_EMAIL], [USER_SESSION_ID]) VALUES (N'VI260946', N'Vijay Chander', N'V2lud2luKjY2', N'vijay.chander@wipro.com', N'WT', N'01', N'CMFREGN', 1, N'Sysadmin', CAST(0x0000A97300CD24D9 AS DateTime), NULL, NULL, N'vijay.chander@wipro.com', NULL)
INSERT [dbo].[VENDOR_MASTER] ([VENDOR_CODE], [VENDOR_NAME], [VENDOR_ADDRESS], [VENDOR_COUNTRY], [VENDOR_STATE], [VENDOR_CITY], [VENDOR_PIN], [VENDOR_CONT_PERSON], [VENDOR_PHONE], [VENDOR_EMAIL], [REMARKS], [ACTIVE], [COMP_CODE], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON], [CST_NO], [SERVICE_TAX_NO], [PAN_NO], [TIN_NO], [ALTERNATE_CONT_NO]) VALUES (N'0001', N'V1', N'Client Supplied Material - Default Settings', N'pak', N'Karnataka', N'Bangalore', N'11', N'Vijay Chander', N'9886082682', N'vijay.chander@wipro.com', N'', 1, N'WT', N'sysadmin', CAST(0x0000A97B01028131 AS DateTime), N'sysadmin', CAST(0x0000A9AE0145349B AS DateTime), NULL, NULL, NULL, NULL, NULL)
ALTER TABLE [dbo].[ASSET_ACQUISITION] ADD  CONSTRAINT [DF_ASSET_ACQUISITION_RUNNING_SERIAL_NO]  DEFAULT ((0)) FOR [RUNNING_SERIAL_NO]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  CONSTRAINT [DF_COMPANY_MASTER_COMP_OWNER]  DEFAULT ((0)) FOR [COMP_OWNER]
GO
ALTER TABLE [dbo].[CITY_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_CITY_MASTER_CITY_MASTER] FOREIGN KEY([CITY_CODE])
REFERENCES [dbo].[CITY_MASTER] ([CITY_CODE])
GO
ALTER TABLE [dbo].[CITY_MASTER] CHECK CONSTRAINT [FK_CITY_MASTER_CITY_MASTER]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[21] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GATEPASS_GENERATION"
            Begin Extent = 
               Top = 169
               Left = 272
               Bottom = 556
               Right = 495
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GATEPASS_ASSETS"
            Begin Extent = 
               Top = 1
               Left = 766
               Bottom = 298
               Right = 957
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ASSET_ACQUISITION"
            Begin Extent = 
               Top = 4
               Left = 9
               Bottom = 405
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VENDOR_MASTER"
            Begin Extent = 
               Top = 88
               Left = 540
               Bottom = 399
               Right = 742
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EMPLOYEE_MASTER"
            Begin Extent = 
               Top = 413
               Left = 535
               Bottom = 638
               Right = 720
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 19
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1515
         Width = 1995
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetPrintGatepassDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'2010
         Width = 1740
         Width = 2175
         Width = 2175
         Width = 2325
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 7065
         Alias = 2145
         Table = 2070
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetPrintGatepassDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetPrintGatepassDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[61] 4[14] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ASSET_ALLOCATION"
            Begin Extent = 
               Top = 23
               Left = 27
               Bottom = 281
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LOCATION_MASTER"
            Begin Extent = 
               Top = 2
               Left = 746
               Bottom = 226
               Right = 926
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EMPLOYEE_MASTER"
            Begin Extent = 
               Top = 7
               Left = 514
               Bottom = 304
               Right = 699
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ASSET_ACQUISITION"
            Begin Extent = 
               Top = 209
               Left = 270
               Bottom = 480
               Right = 490
            End
            DisplayFlags = 280
            TopColumn = 25
         End
         Begin Table = "CATEGORY_MASTER"
            Begin Extent = 
               Top = 230
               Left = 727
               Bottom = 480
               Right = 907
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "COMPANY_MASTER"
            Begin Extent = 
               Top = 289
               Left = 47
               Bottom = 473
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetAllocation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         Width = 1140
         Width = 1425
         Width = 2190
         Width = 1620
         Width = 1080
         Width = 1470
         Width = 1005
         Width = 1815
         Width = 1650
         Width = 1515
         Width = 1110
         Width = 2010
         Width = 2040
         Width = 1965
         Width = 1515
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 6165
         Alias = 2790
         Table = 1875
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetAllocation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetAllocation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ASSET_ACQUISITION"
            Begin Extent = 
               Top = 4
               Left = 266
               Bottom = 306
               Right = 486
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CATEGORY_MASTER"
            Begin Extent = 
               Top = 9
               Left = 31
               Bottom = 162
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LOCATION_MASTER"
            Begin Extent = 
               Top = 5
               Left = 759
               Bottom = 225
               Right = 939
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VENDOR_MASTER"
            Begin Extent = 
               Top = 117
               Left = 546
               Bottom = 300
               Right = 748
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "COMPANY_MASTER"
            Begin Extent = 
               Top = 176
               Left = 31
               Bottom = 291
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1575
         Width = 1500
         Width = 1500
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetTracking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         Width = 1500
         Width = 1500
         Width = 1620
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 5700
         Alias = 1755
         Table = 2205
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetTracking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportAssetTracking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[20] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GATEPASS_GENERATION"
            Begin Extent = 
               Top = 7
               Left = 19
               Bottom = 281
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GATEPASS_ASSETS"
            Begin Extent = 
               Top = 5
               Left = 339
               Bottom = 192
               Right = 530
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "ASSET_ACQUISITION"
            Begin Extent = 
               Top = 3
               Left = 725
               Bottom = 311
               Right = 945
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VENDOR_MASTER"
            Begin Extent = 
               Top = 225
               Left = 273
               Bottom = 393
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "EMPLOYEE_MASTER"
            Begin Extent = 
               Top = 199
               Left = 519
               Bottom = 393
               Right = 704
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 20
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1845
         Width = 1500
         Width = 1635
         Width = 1500
         Width = 1500
         Width = 2145
         Width = 1500
         Width = 1500
         Width = 1500
         Width =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportGatePass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 1605
         Width = 1695
         Width = 1650
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 8955
         Alias = 1830
         Table = 2130
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportGatePass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ReportGatePass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[19] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GROUP_MASTER"
            Begin Extent = 
               Top = 5
               Left = 312
               Bottom = 238
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GROUP_RIGHTS"
            Begin Extent = 
               Top = 9
               Left = 62
               Bottom = 229
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "COMPANY_MASTER"
            Begin Extent = 
               Top = 10
               Left = 553
               Bottom = 228
               Right = 727
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1230
         Width = 1500
         Width = 1095
         Width = 2730
         Width = 1500
         Width = 1515
         Width = 1500
         Width = 1500
         Width = 1425
         Width = 1110
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3165
         Alias = 900
         Table = 1530
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_UserGroupRights'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_UserGroupRights'
GO
USE [master]
GO
ALTER DATABASE [WIPRO_ATS] SET  READ_WRITE 
GO
