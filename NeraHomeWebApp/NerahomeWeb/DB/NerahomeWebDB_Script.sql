Create database NerahomeWeb
go
use NerahomeWeb
Create table APP_User_Info(
[User_Id] Int Primary Key
,[Password] Varchar(255) not null
,Email Varchar(255)
,[Enable] Char(1) Default '1'
,User_Full_Name	NVARCHAR(100)
,Phone_Number VARCHAR(30)
,Quyen_Id int
,Quyen_Name VARCHAR(100)
)

go
Create table APP_Auto_Number(
Refer_Key VARCHAR(150) primary key
,Refer_Value int
)
go
Create table APP_Dic_Domain(
Domain_Name	VARCHAR(150)
,Parram_Key VARCHAR(150)
,Parram_Value NVARCHAR(255)
,Parram_Order int
,[Enable] Char(1) Default '1'
)
go
create table APP_Quyen_Info(
Quyen_Id	int Primary Key
,Quyen_Name VARCHAR(100)
,[Enable] char(1) default '1'
)
go
Create table APP_SYS_Parrams(
Parram_Key VARCHAR(150) Primary Key
,Parram_Value NVARCHAR(255)
,[Enable] Char(1) Default '1'
)
go
Create table APP_User_Permission(
Quyen_Id int
,Function_Name VARCHAR(150)
,[Enable] Char(1) Default '1'
)
go
Create table Cs_Menu_item(
Item_Id int primary key
,Item_Name Nvarchar(100)
,[Enable] char(1) default '1'
,Item_Type Varchar(3)
,Meta_Desc NVarchar(255)
,Meta_Key NVarchar(255)
,[Language] VARCHAR(2)
)
go
Create table APP_Email_Info(
Email_Id Int Primary Key
,Enail_Subject NVarchar(255)
,Email_Body Nvarchar(MAX)
,Email_Receiver Nvarchar(255)
,Email_Status Varchar(20)
,Sent_Date Datetime
,Request_By NVarchar(100)
)
Go
Create table CS_Post_Info(
Post_Id Int Primary Key
,Post_Title Nvarchar(255)
,Post_Content Nvarchar(Max)
,Meta_Desc Nvarchar(255)
,Meta_Key Nvarchar(255)
,[Enable] Char(1) default '1'
,Item_Id int
,Create_By int
,Create_Date Datetime
,Update_By int
,Update_Date Datetime
,[Language] Varchar(2)
)
Create table CS_ChatBox_Info(
Chat_Id Int primary Key
,Request_Name NVarchar(100)
,Request_Phonr Varchar(30)
,Request_Content Nvarchar(255)
,Unread Char(1) Default '0'
)
go
Create table CS_Post_Slides(
Post_Id int
,Image_Title Nvarchar(255)
,Image_Url Varchar(255)
,Image_Link Varchar(255)
,Image_Order int
,[Enable] char(1) default '1'
,[Language] Varchar(2)
)
go
Create table CS_Other_Slide(
Image_Title NVarchar(255)
,Image_Url Varchar(255)
,Image_Link Varchar(255)
,Image_Order int
,[Enable] char(1) default '1'
,Slide_Type VARCHAR(20)
,[Language] Varchar(2)
)