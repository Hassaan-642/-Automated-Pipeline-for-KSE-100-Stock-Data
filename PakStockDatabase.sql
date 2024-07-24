create database pakstock;
use pakstock;


CREATE TABLE historical_data_abl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);
drop table historical_data_abl;
select * from historical_data_abl;
update historical_data_abl
set stock_name='abl(AlliedBankLtd)' where Time > '2024-06-28';

DELETE FROM historical_data_abl
WHERE Time > '2024-06-28';


CREATE TABLE historical_data_abot (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);
drop table historical_data_abot;
select * from historical_data_abot;

DELETE FROM historical_data_abot
WHERE Time > '2024-07-15';

CREATE TABLE historical_data_agp (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);
select * from historical_data_agp;

CREATE TABLE historical_data_aicl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_aicl;

CREATE TABLE historical_data_akbl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_akbl;

CREATE TABLE historical_data_apl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_apl;

CREATE TABLE historical_data_arpl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_arpl;

CREATE TABLE historical_data_atrl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_atrl;

CREATE TABLE historical_data_avn (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_avn;

CREATE TABLE historical_data_bafl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_bafl;

CREATE TABLE historical_data_bahl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_bahl;

CREATE TABLE historical_data_bipl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_bipl;

CREATE TABLE historical_data_bnwm (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_bnwm;

CREATE TABLE historical_data_bop (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_bop;

CREATE TABLE historical_data_bwcl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_bwcl;

CREATE TABLE historical_data_cepb (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_cepb;

CREATE TABLE historical_data_chcc (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_chcc;

CREATE TABLE historical_data_cnergy (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_cnergy;

CREATE TABLE historical_data_colg (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_colg;

CREATE TABLE historical_data_dawh (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);
select * from historical_data_dawh;

CREATE TABLE historical_data_dcr (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_dcr;

CREATE TABLE historical_data_dgkc (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_dgkc;

CREATE TABLE historical_data_efert (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_efert;

CREATE TABLE historical_data_efug (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_efug;

CREATE TABLE historical_data_engro (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_engro;

CREATE TABLE historical_data_epcl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_epcl;


CREATE TABLE historical_data_fabl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_fabl;

CREATE TABLE historical_data_fatima (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_fatima;

CREATE TABLE historical_data_fccl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_fccl;

CREATE TABLE historical_data_fcepl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_fcepl;

CREATE TABLE historical_data_ffbl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_ffbl;

CREATE TABLE historical_data_ffc (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_ffc;

CREATE TABLE historical_data_fham (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_fham;

CREATE TABLE historical_data_gadt (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_gadt;

CREATE TABLE historical_data_gatm (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_gatm;

CREATE TABLE historical_data_ghgl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_ghgl;

CREATE TABLE historical_data_glaxo (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_glaxo;

CREATE TABLE historical_data_hbl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_hbl;

CREATE TABLE historical_data_hgfa (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_hgfa;

CREATE TABLE historical_data_hinoon (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_hinoon;

CREATE TABLE historical_data_hmb (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_hmb;

CREATE TABLE historical_data_hubc (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_hubc;

CREATE TABLE historical_data_ibfl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_ibfl;

CREATE TABLE historical_data_ilp (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_ilp;

CREATE TABLE historical_data_indu (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_indu;

CREATE TABLE historical_data_inil (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_inil;


CREATE TABLE historical_data_isl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_isl;

CREATE TABLE historical_data_jvdc (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_jvdc;

CREATE TABLE historical_data_kapco (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_kapco;

CREATE TABLE historical_data_kel (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_kel;

CREATE TABLE historical_data_lci (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_lci;

CREATE TABLE historical_data_lotchem (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_lotchem;

CREATE TABLE historical_data_luck (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_luck;

CREATE TABLE historical_data_mari (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_mari;


CREATE TABLE historical_data_mcb (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_mcb;

CREATE TABLE historical_data_mebl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_mebl;

CREATE TABLE historical_data_mlcf (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_mlcf;

CREATE TABLE historical_data_mtl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_mtl;

CREATE TABLE historical_data_mughal (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_mughal;


CREATE TABLE historical_data_mureb (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_mureb;

CREATE TABLE historical_data_natf (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_natf;


CREATE TABLE historical_data_nbp (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_nbp;

CREATE TABLE historical_data_ncl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_ncl;

CREATE TABLE historical_data_nestle (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_nestle;

CREATE TABLE historical_data_nml (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_nml;

CREATE TABLE historical_data_nrl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_nrl;

CREATE TABLE historical_data_ogdc (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_ogdc;


CREATE TABLE historical_data_pael (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_pael;

CREATE TABLE historical_data_pakt (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_pakt;

CREATE TABLE historical_data_pglc (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_pglc;

CREATE TABLE historical_data_pibtl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_pibtl;

CREATE TABLE historical_data_pioc (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_pioc;


CREATE TABLE historical_data_pkgp (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_pkgp;

CREATE TABLE historical_data_pkgs (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_pkgs;

CREATE TABLE historical_data_pol (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_pol;

CREATE TABLE historical_data_poml (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);


select * from historical_data_poml;

CREATE TABLE historical_data_ppl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);


select * from historical_data_ppl;

CREATE TABLE historical_data_psel (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_psel;

CREATE TABLE historical_data_pso (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);


select * from historical_data_pso;

CREATE TABLE historical_data_psx (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_psx;


CREATE TABLE historical_data_ptc (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_ptc;

CREATE TABLE historical_data_rmpl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_rmpl;

CREATE TABLE historical_data_scbpl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_scbpl;

CREATE TABLE historical_data_searl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_searl;

CREATE TABLE historical_data_shel (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_shel;

CREATE TABLE historical_data_shfa (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_shfa;

CREATE TABLE historical_data_sml (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_sml;

CREATE TABLE historical_data_sngp (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_sngp;

CREATE TABLE historical_data_spwl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_spwl;

CREATE TABLE historical_data_srvi (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_srvi;

CREATE TABLE historical_data_sys (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_sys;

CREATE TABLE historical_data_tgl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_tgl;

CREATE TABLE historical_data_thall (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_thall;

CREATE TABLE historical_data_trg (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_trg;
select * from historical_data_trg where VOLUME IS NULL;



CREATE TABLE historical_data_ubl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_ubl;

CREATE TABLE historical_data_unity (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);


select * from historical_data_unity;

CREATE TABLE historical_data_upfl (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

drop table historical_data_upfl;
select * from historical_data_upfl;
delete from historical_data_upfl
where TIME = '2021-06-15';

CREATE TABLE historical_data_youw (
    TIME DATE,
    OPEN DOUBLE,
    HIGH DOUBLE,
    LOW DOUBLE,
    CLOSE DOUBLE,
    VOLUME float,
    stock_name VARCHAR(255),
    PRIMARY KEY (TIME, stock_name)
);

select * from historical_data_youw;











