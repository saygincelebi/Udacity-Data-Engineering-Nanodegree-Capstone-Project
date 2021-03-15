
CREATE TABLE public.fact_immigration(
cicid double precision,
i94yr double precision,
i94mon double precision,
i94cit double precision,
country_residence_code double precision,
i94port varchar,
arrdate varchar,
i94mode double precision,
state_code varchar,
depdate double precision,
i94bir double precision,
i94visa double precision,
count double precision,
dtadfile varchar,
visapost varchar,
entdepa varchar,
entdepd varchar,
matflag varchar,
biryear double precision,
dtaddto varchar,
gender varchar,
airline varchar,
admnum double precision,
fltno varchar,
visa_type_key varchar)



CREATE TABLE public.dim_demographics (
  city varchar,
  state varchar,
  median_age float,
  male_population int,
  female_population int,
  total_population int,
  number_of_veterans int,
  foreign_born int,
  average_household_size float,
  state_code varchar,
  race varchar,
  count int,
  id varchar,
  CONSTRAINT dim_demographics_pkey PRIMARY KEY (city, state, state_code, race)
)
  

CREATE TABLE public.dim_visatype (
	visatype varchar,
	visa_type_key varchar,
	CONSTRAINT dim_visatype_pkey PRIMARY KEY (visa_type_key)
);

CREATE TABLE public.dim_country (
	country_code int,
	country varchar,
	average_temperature float, --Double Precision
	CONSTRAINT dim_country_pkey PRIMARY KEY (country_code)
);


CREATE TABLE public.dim_calendar (
arrdate varchar,
arrival_day int, 
arrival_week int, 
arrival_month int, 
arrival_year int, 
arrival_weekday int, 
id varchar,
  CONSTRAINT dim_calendar_pkey PRIMARY KEY (arrdate)  
)

