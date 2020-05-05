create table public.cases (
  id serial primary key,
  dateRep date not null,
  day integer,
  month integer,
  year integer,
  count integer,
  deaths integer,
  countriesAndTerritories varchar(50) not null,
  geoId varchar(20) not null, 
  countryterritoryCode varchar(20),
  popData2018 integer,
  continentExp varchar(20),
  created_at timestamp without time zone
);

create sequence public.cases_id_seq
    start with 1
    increment BY 1
    no MINVALUE
    no MAXVALUE
    cache 1;

alter sequence public.cases_id_seq owned by public.cases.id;

create index idx_cases_countriesAndTerritories ON cases(countriesAndTerritories);
