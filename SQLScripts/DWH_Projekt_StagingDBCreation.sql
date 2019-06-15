CREATE TABLE [dbo].[Personen_Denormalized](
	[PersonBusinessKey] [int] NOT NULL primary key,
	[Vorname] [nvarchar](50) NULL,
	[Nachname] [nvarchar](50) NULL,
	[Geschlecht] [nvarchar](10) NULL,
	[Geburtsdatum][date] NULL,
	[Art] [nvarchar](50) NULL,
)

CREATE TABLE [dbo].[Personen_Insert](
	[PersonBusinessKey] [int] NOT NULL primary key,
	[Vorname] [nvarchar](50) NULL,
	[Nachname] [nvarchar](50) NULL,
	[Geschlecht] [nvarchar](10) NULL,
	[Geburtsdatum][date] NULL,
	[Art] [nvarchar](50) NULL,
)

CREATE TABLE [dbo].[Personen_Update](
	[PersonBusinessKey] [int] NOT NULL primary key,
	[Vorname] [nvarchar](50) NULL,
	[Nachname] [nvarchar](50) NULL,
	[Geschlecht] [nvarchar](10) NULL,
	[Geburtsdatum][date] NULL,
	[Art] [nvarchar](50) NULL,
)

CREATE TABLE [dbo].[Person_Delete](
	[PersonBusinessKey] [int] NOT NULL primary key,
	
)
CREATE TABLE [dbo].[Veranstaltungen](
	[VerantstaltungsBusinessKey]  [int] NOT NULL primary key,
	[Veranstaltungsname] [nvarchar](50) NULL,
	[WS] [decimal](10, 2) NULL,
	[Studiengangsname] [nvarchar](50) NULL,
	[Studienrichtung] [nvarchar](50) NULL,
	[Veranstaltungsart] [nvarchar](50) NULL,
)
	CREATE TABLE [dbo].[Studienrichtungen](
	[StudienrichtungsBusinessKey] [int] NOT NULL primary key,
	[Name] [nvarchar](50) NULL,
)
CREATE TABLE [dbo].[Evaluierungen](
	[EvaluierungBusinessKey] [int] NOT NULL primary key,
	[VeranstaltungsBusinessKey] [int] NOT NULL,
	[StudienrichtungBusinessKey] [int] NOT NULL,
	[PersonBusinessKey] [int] NOT NULL,
	[Datum] [date] NULL,
	[AufbauUndGliederungDerLerhveranstaltung] [int] NULL,
	[LehrveranstaltungsleitungKompetenz] [int] NULL,
	[LehrveranstaltungsleitungEingehenAufFragen] [int] NULL,
	[BesondersGut] [nvarchar](50) NULL,
	[AlterZumZeitpunktDerEvaluierung] [int] NOT NULL
)