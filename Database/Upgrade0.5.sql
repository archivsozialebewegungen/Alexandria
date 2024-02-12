alter table dokument add column doppel smallint not null default 0
alter table dokument add column aufbewahrung varchar(15)
update dokument set doppel = 1 where doktyp = 9 and laufnr in (select laufnr from dokument where zustand ilike '%doppel%')
update dokument set aufbewahrung = 'Schublade A0' where doktyp = 9 and laufnr in (select laufnr from dokument where zustand ilike '%a0%')
update dokument set aufbewahrung = 'Schublade A1' where doktyp = 9 and laufnr in (select laufnr from dokument where zustand ilike '%a1%')
update dokument set aufbewahrung = 'Schublade A2' where doktyp = 9 and laufnr in (select laufnr from dokument where zustand ilike '%a2%')
update dokument set aufbewahrung = 'Schublade A3' where doktyp = 9 and laufnr in (select laufnr from dokument where zustand ilike '%a3%')
update registry set wert = '0.5' where schluessel = 'version'
