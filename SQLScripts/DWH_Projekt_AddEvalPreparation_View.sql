/****** Object:  View [dbo].[v_EvalFactPreparation]    Script Date: 11.06.2019 14:47:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[v_EvalFactPreparation]
AS
SELECT Datum AS 'Datum der Evaluierung', PersonNr as PersonBusinessKey, 
ver.VerantstaltungsNr as VeranstaltungsBusinessKey,  StudienrichtungNr as StudienrichtungBusinessKey, 
EvaluierungNr as EvaluierungsBusinessKey,
AufbauUndGliederungDerLerhveranstaltung, LehrveranstaltungsleitungKompetenz, LehrveranstaltungsleitungEingehenAufFragen, BesondersGut 
FROM Evaluierungen
INNER JOIN Personen ON (PersonNrFK = PersonNr)
INNER JOIN Veranstaltungen as ver ON (VerantstaltungNrFK = VerantstaltungsNr)
inner JOIN Studiengaenge ON (StudiengangNrFk = StudiengangsNr)
INNER JOIN Studienrichtungen ON (StudienrichtungNrFK = StudienrichtungNr)
INNER JOIN Veranstaltungsarten ON (VeranstaltungsArtNrFK = VerantstaltungsArtNr)
GO


