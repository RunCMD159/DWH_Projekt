/****** Object:  View [dbo].[v_Veranstaltungen]    Script Date: 11.06.2019 14:02:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [dbo].[v_Veranstaltungen]
AS
SELECT        dbo.Studienrichtungen.Studienrichtung, dbo.Studiengaenge.Studiengangsname,dbo.Studiengaenge.StudiengangsNr as StudiengangsBusinessKey, dbo.Veranstaltungsarten.Veranstaltungsart, dbo.Veranstaltungen.Veranstaltungsname,dbo.Veranstaltungen.VerantstaltungsNr as VeranstaltungsBusinessKey
FROM            dbo.Studiengaenge INNER JOIN
                         dbo.Studienrichtungen ON dbo.Studiengaenge.StudienrichtungNrFK = dbo.Studienrichtungen.StudienrichtungNr INNER JOIN
                         dbo.Veranstaltungen ON dbo.Studiengaenge.StudiengangsNr = dbo.Veranstaltungen.StudiengangNrFK INNER JOIN
                         dbo.Veranstaltungsarten ON dbo.Veranstaltungen.VeranstaltungsArtNrFK = dbo.Veranstaltungsarten.VerantstaltungsArtNr

GO


