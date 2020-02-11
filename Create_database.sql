USE [master]
GO

/****** Object:  Database [funandgames]    Script Date: 16/01/2020 10:48:16 ******/
CREATE DATABASE [funandgames]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'funandgames', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\funandgames.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'funandgames_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\funandgames_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [funandgames].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
