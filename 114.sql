WITH f AS(SELECT DISTINCT ID_psg, count(*) p FROM pass_in_trip GROUP BY ID_psg, place) SELECT name, f.p FROM f JOIN Passenger x ON x.ID_psg=f.Id_psg WHERE p= (SELECT max(p) FROM f)