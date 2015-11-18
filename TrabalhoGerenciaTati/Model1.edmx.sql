
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/13/2015 21:26:10
-- Generated from EDMX file: C:\Users\Diosefer\documents\visual studio 2013\Projects\TrabalhoGerenciaTati\TrabalhoGerenciaTati\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TrabalhoGerencia];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_saidaingressos_evento]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[saidaingressos] DROP CONSTRAINT [FK_saidaingressos_evento];
GO
IF OBJECT_ID(N'[dbo].[FK_saidaingressos_operador]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[saidaingressos] DROP CONSTRAINT [FK_saidaingressos_operador];
GO
IF OBJECT_ID(N'[dbo].[FK_EventoLote]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Lote] DROP CONSTRAINT [FK_EventoLote];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Evento]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Evento];
GO
IF OBJECT_ID(N'[dbo].[Lote]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lote];
GO
IF OBJECT_ID(N'[dbo].[Operador]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Operador];
GO
IF OBJECT_ID(N'[dbo].[saidaingressos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[saidaingressos];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Evento'
CREATE TABLE [dbo].[Evento] (
    [Id] int  NOT NULL,
    [evento] varchar(50)  NULL,
    [listLote] varchar(50)  NULL,
    [data] varchar(50)  NULL,
    [hora] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Lote'
CREATE TABLE [dbo].[Lote] (
    [Id] int  NOT NULL,
    [numero] int  NULL,
    [ingresso] int  NULL,
    [tipoingresso] varchar(50)  NULL,
    [valoringresso] decimal(19,4)  NULL,
    [Evento_Id] int  NOT NULL
);
GO

-- Creating table 'Operador'
CREATE TABLE [dbo].[Operador] (
    [Id] int  NOT NULL,
    [nome] varchar(50)  NULL,
    [telefone] decimal(18,0)  NULL,
    [status] bit  NULL
);
GO

-- Creating table 'saidaingressos'
CREATE TABLE [dbo].[saidaingressos] (
    [Id] int  NOT NULL,
    [quantidade] int  NULL,
    [valor] decimal(19,4)  NULL,
    [Evento_Id] int  NULL,
    [Operador_Id] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Evento'
ALTER TABLE [dbo].[Evento]
ADD CONSTRAINT [PK_Evento]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Lote'
ALTER TABLE [dbo].[Lote]
ADD CONSTRAINT [PK_Lote]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Operador'
ALTER TABLE [dbo].[Operador]
ADD CONSTRAINT [PK_Operador]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'saidaingressos'
ALTER TABLE [dbo].[saidaingressos]
ADD CONSTRAINT [PK_saidaingressos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Evento_Id] in table 'saidaingressos'
ALTER TABLE [dbo].[saidaingressos]
ADD CONSTRAINT [FK_saidaingressos_evento]
    FOREIGN KEY ([Evento_Id])
    REFERENCES [dbo].[Evento]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_saidaingressos_evento'
CREATE INDEX [IX_FK_saidaingressos_evento]
ON [dbo].[saidaingressos]
    ([Evento_Id]);
GO

-- Creating foreign key on [Operador_Id] in table 'saidaingressos'
ALTER TABLE [dbo].[saidaingressos]
ADD CONSTRAINT [FK_saidaingressos_operador]
    FOREIGN KEY ([Operador_Id])
    REFERENCES [dbo].[Operador]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_saidaingressos_operador'
CREATE INDEX [IX_FK_saidaingressos_operador]
ON [dbo].[saidaingressos]
    ([Operador_Id]);
GO

-- Creating foreign key on [Evento_Id] in table 'Lote'
ALTER TABLE [dbo].[Lote]
ADD CONSTRAINT [FK_EventoLote]
    FOREIGN KEY ([Evento_Id])
    REFERENCES [dbo].[Evento]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EventoLote'
CREATE INDEX [IX_FK_EventoLote]
ON [dbo].[Lote]
    ([Evento_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------