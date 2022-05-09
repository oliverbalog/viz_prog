
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/03/2022 20:53:26
-- Generated from EDMX file: C:\Users\asper\source\repos\Viz_Prog_Beadando\vasut_adatbazis\enVasut.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Vasut_db];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_enVonatenMenetrend_enVonat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[enVonatenMenetrend] DROP CONSTRAINT [FK_enVonatenMenetrend_enVonat];
GO
IF OBJECT_ID(N'[dbo].[FK_enVonatenMenetrend_enMenetrend]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[enVonatenMenetrend] DROP CONSTRAINT [FK_enVonatenMenetrend_enMenetrend];
GO
IF OBJECT_ID(N'[dbo].[FK_enMegalloenMenetrend_enMegallo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[enMegalloenMenetrend] DROP CONSTRAINT [FK_enMegalloenMenetrend_enMegallo];
GO
IF OBJECT_ID(N'[dbo].[FK_enMegalloenMenetrend_enMenetrend]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[enMegalloenMenetrend] DROP CONSTRAINT [FK_enMegalloenMenetrend_enMenetrend];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[enVonatok]', 'U') IS NOT NULL
    DROP TABLE [dbo].[enVonatok];
GO
IF OBJECT_ID(N'[dbo].[enMenetrendek]', 'U') IS NOT NULL
    DROP TABLE [dbo].[enMenetrendek];
GO
IF OBJECT_ID(N'[dbo].[enMegallok]', 'U') IS NOT NULL
    DROP TABLE [dbo].[enMegallok];
GO
IF OBJECT_ID(N'[dbo].[enVonatenMenetrend]', 'U') IS NOT NULL
    DROP TABLE [dbo].[enVonatenMenetrend];
GO
IF OBJECT_ID(N'[dbo].[enMegalloenMenetrend]', 'U') IS NOT NULL
    DROP TABLE [dbo].[enMegalloenMenetrend];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'enVonatok'
CREATE TABLE [dbo].[enVonatok] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nev] nvarchar(max)  NOT NULL,
    [Gyartas] datetime  NOT NULL,
    [Vagonszam] int  NOT NULL
);
GO

-- Creating table 'enMenetrendek'
CREATE TABLE [dbo].[enMenetrendek] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Indulas_ido] datetime  NOT NULL,
    [Erkezes_ido] datetime  NOT NULL,
    [Honnan] nvarchar(max)  NOT NULL,
    [Hova] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'enMegallok'
CREATE TABLE [dbo].[enMegallok] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Irsz] int  NOT NULL,
    [Helyseg] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'enVonatenMenetrend'
CREATE TABLE [dbo].[enVonatenMenetrend] (
    [enVonat_Id] int  NOT NULL,
    [enMenetrend_Id] int  NOT NULL
);
GO

-- Creating table 'enMegalloenMenetrend'
CREATE TABLE [dbo].[enMegalloenMenetrend] (
    [enMegallo_Id] int  NOT NULL,
    [enMenetrend_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'enVonatok'
ALTER TABLE [dbo].[enVonatok]
ADD CONSTRAINT [PK_enVonatok]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'enMenetrendek'
ALTER TABLE [dbo].[enMenetrendek]
ADD CONSTRAINT [PK_enMenetrendek]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'enMegallok'
ALTER TABLE [dbo].[enMegallok]
ADD CONSTRAINT [PK_enMegallok]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [enVonat_Id], [enMenetrend_Id] in table 'enVonatenMenetrend'
ALTER TABLE [dbo].[enVonatenMenetrend]
ADD CONSTRAINT [PK_enVonatenMenetrend]
    PRIMARY KEY CLUSTERED ([enVonat_Id], [enMenetrend_Id] ASC);
GO

-- Creating primary key on [enMegallo_Id], [enMenetrend_Id] in table 'enMegalloenMenetrend'
ALTER TABLE [dbo].[enMegalloenMenetrend]
ADD CONSTRAINT [PK_enMegalloenMenetrend]
    PRIMARY KEY CLUSTERED ([enMegallo_Id], [enMenetrend_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [enVonat_Id] in table 'enVonatenMenetrend'
ALTER TABLE [dbo].[enVonatenMenetrend]
ADD CONSTRAINT [FK_enVonatenMenetrend_enVonat]
    FOREIGN KEY ([enVonat_Id])
    REFERENCES [dbo].[enVonatok]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [enMenetrend_Id] in table 'enVonatenMenetrend'
ALTER TABLE [dbo].[enVonatenMenetrend]
ADD CONSTRAINT [FK_enVonatenMenetrend_enMenetrend]
    FOREIGN KEY ([enMenetrend_Id])
    REFERENCES [dbo].[enMenetrendek]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_enVonatenMenetrend_enMenetrend'
CREATE INDEX [IX_FK_enVonatenMenetrend_enMenetrend]
ON [dbo].[enVonatenMenetrend]
    ([enMenetrend_Id]);
GO

-- Creating foreign key on [enMegallo_Id] in table 'enMegalloenMenetrend'
ALTER TABLE [dbo].[enMegalloenMenetrend]
ADD CONSTRAINT [FK_enMegalloenMenetrend_enMegallo]
    FOREIGN KEY ([enMegallo_Id])
    REFERENCES [dbo].[enMegallok]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [enMenetrend_Id] in table 'enMegalloenMenetrend'
ALTER TABLE [dbo].[enMegalloenMenetrend]
ADD CONSTRAINT [FK_enMegalloenMenetrend_enMenetrend]
    FOREIGN KEY ([enMenetrend_Id])
    REFERENCES [dbo].[enMenetrendek]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_enMegalloenMenetrend_enMenetrend'
CREATE INDEX [IX_FK_enMegalloenMenetrend_enMenetrend]
ON [dbo].[enMegalloenMenetrend]
    ([enMenetrend_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------