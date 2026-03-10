-- DROP SCHEMA public_transport;

CREATE SCHEMA public_transport AUTHORIZATION "admin";
-- public_transport.routes definition

-- Drop table

-- DROP TABLE public_transport.routes;

CREATE TABLE public_transport.routes (
	route_id int4 NULL,
	agency_id int4 NULL,
	route_short_name varchar(50) NULL,
	route_long_name varchar(128) NULL,
	route_type int4 NULL,
	route_url varchar(50) NULL,
	route_color varchar(50) NULL,
	route_text_color varchar(50) NULL,
	is_night int4 NULL,
	is_regional int4 NULL,
	is_substitute_transport int4 NULL
);


-- public_transport.stop_times definition

-- Drop table

-- DROP TABLE public_transport.stop_times;

CREATE TABLE public_transport.stop_times (
	trip_id varchar(50) NULL,
	arrival_time varchar(50) NULL,
	departure_time varchar(50) NULL,
	stop_id varchar(50) NULL,
	stop_sequence int4 NULL,
	stop_headsign varchar(50) NULL,
	pickup_type int4 NULL,
	drop_off_type int4 NULL,
	shape_dist_traveled float4 NULL,
	trip_operation_type int4 NULL,
	bikes_allowed int4 NULL,
	stop_icons varchar(50) NULL,
	headsign_icons varchar(50) NULL
);


-- public_transport.stops definition

-- Drop table

-- DROP TABLE public_transport.stops;

CREATE TABLE public_transport.stops (
	stop_id text NOT NULL,
	stop_name text NOT NULL,
	latitude float8 NOT NULL,
	longitude float8 NOT NULL,
	CONSTRAINT stops_pkey PRIMARY KEY (stop_id)
);

