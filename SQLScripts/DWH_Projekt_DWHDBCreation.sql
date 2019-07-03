CREATE TABLE FactEvaluierungen
(
	[EvaluierungKey] int identity primary key,
	[EvaluierungBusinessKey] [int] NOT NULL,
	[VeranstaltungsKey] [int] NOT NULL,
	[StudienrichtungKey] [int] NOT NULL,
	[PersonKey] [int] NOT NULL,
	[Datum] [date] NULL,
	[AufbauUndGliederungDerLerhveranstaltung] [int] NULL,
	[LehrveranstaltungsleitungKompetenz] [int] NULL,
	[LehrveranstaltungsleitungEingehenAufFragen] [int] NULL,
	[BesondersGut] [nvarchar](50) NULL,
	[AlterZumZeitpunktDerEvaluierung] [int] NOT NULL
)

CREATE TABLE DimPersonen
(
	[PersonKey] [int] NOT NULL identity primary key,
	[PersonBusinessKey] [int] NOT NULL,
	[Vorname] [nvarchar](50) NULL,
	[Nachname] [nvarchar](50) NULL,
	[Geschlecht] [nvarchar](10) NULL,
	[Geburtsdatum][date] NULL,
	[Art] [nvarchar](50) NULL,
	History nvarchar(50)
)

CREATE TABLE DimVeranstaltungen
(
	[VerantstaltungsKey]  [int] NOT NULL identity primary key,
	[VerantstaltungsBusinessKey]  [int] NOT NULL,
	[Veranstaltungsname] [nvarchar](50) NULL,
	[WS] [decimal](10, 2) NULL,
	[Studiengangsname] [nvarchar](50) NULL,
	[Studienrichtung] [nvarchar](50) NULL,
	[Veranstaltungsart] [nvarchar](50) NULL
)

CREATE TABLE DimStudienrichtung
(
	[StudienrichtungsKey] [int] NOT NULL identity primary key,
	[StudienrichtungsBusinessKey] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
)