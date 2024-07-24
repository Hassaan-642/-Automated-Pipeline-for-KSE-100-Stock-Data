import requests
from bs4 import BeautifulSoup
import pandas as pd
import mysql.connector
from mysql.connector import Error
import time

symbols_and_paths = [
    #symbol, TableName, StockName
    ('ABL', 'historical_data_abl', 'abl(AlliedBankLtd)'),
    ('ABOT', 'historical_data_abot', 'abot(AbbotLabortariesLtd)'),
    ('AICL', 'historical_data_aicl', 'aicl(AdamJeeInsuranceCorporationLtd)'),
    ('AGP', 'historical_data_agp', 'agp(AitkenstuartPakistan(Private)Limited)'),
    ('AKBL', 'historical_data_akbl', 'akbl(AskariBankLtd)'),
    ('APL', 'historical_data_apl', 'apl(AttockPetroleumLimited)'),
    ('ARPL', 'historical_data_arpl', 'arpl(AchromaPakistanLimited)'),
    ('ATRL', 'historical_data_atrl', 'atrl(AttockRefineryLimited)'),
    ('AVN', 'historical_data_avn', 'avn(AvanceonLimited)'),
    ('BAFL', 'historical_data_bafl', 'bafl(BankAlfalahLimited)'),
    ('BAHL', 'historical_data_bahl', 'bahl(BankAlHabibLimited)'),
    ('BNWM', 'historical_data_bnwm', 'bnwm(BannuWoolenMillsLimited)'),
    ('BIPL', 'historical_data_bipl', 'bipl(BankislamiPakistanLtd)'),
    ('BOP', 'historical_data_bop', 'bop(BankOfPunjabLimited)'),
    ('BWCL', 'historical_data_bwcl', 'bwcl(BestWayCementLimited)'),
    ('CNERGY', 'historical_data_cnergy', 'cnergy(CnergyicoPklimited)BYCO'),
    ('CEPB', 'historical_data_cepb', 'cepb(centuryPaperBoardMillsLimited)'),
    ('CHCC', 'historical_data_chcc', 'chcc(CheratCementCompanyLimited)'),
    ('COLG', 'historical_data_colg', 'colg(Colgatepalmolivepakistanlimited)'),
    ('DAWH', 'historical_data_dawh', 'dawh(DawoodHerculesCorporationLimited)'),
    ('DCR', 'historical_data_dcr', 'dcr(DolmenCityReit)'),
    ('DGKC', 'historical_data_dgkc', 'dgkc(D.G.KhanCementCompanyLimited)'),
    ('EFERT', 'historical_data_efert', 'efert(EngroFertilizersLimited)'),
    ('EFUG', 'historical_data_efug', 'efug(EFUGenaralInsuranceLimited)'),
    ('ENGRO', 'historical_data_engro', 'engro(EngroCorporationLimited)'),
    ('EPCL', 'historical_data_epcl', 'epcl(EngroPolymer&ChemicalsLimited)'),
    ('FABL', 'historical_data_fabl', 'fabl(FaysalBankLimited)'),
    ('FATIMA', 'historical_data_fatima', 'fatima(FatimaFertilizerCompanyLimited)'),
    ('FCCL', 'historical_data_fccl', 'fccl(FaujiCementCompanyLimited)'),
    ('FCEPL', 'historical_data_fcepl', 'fcepl(FrieslandcampinaEngroPakistanLimited)'),
    ('FFBL', 'historical_data_ffbl', 'ffbl(FaujifertilizerBinQasimLimited)'),
    ('FFC', 'historical_data_ffc', 'ffc(FaujifertilizerCompanyLimited)'),
    ('FHAM', 'historical_data_fham', 'fham(Firsthabibmodaraba)'),
    ('GADT', 'historical_data_gadt', 'gadt(GadoontextileMillslimited)'),
    ('GATM', 'historical_data_gatm', 'gatm(GulAhmedtextileMillsLimited)'),
    ('GHGL', 'historical_data_ghgl', 'ghgl(GhaniGlassLimited)'),
    ('GLAXO', 'historical_data_glaxo', 'glaxo(GlaxoSmithklinelimited)'),
    ('HBL', 'historical_data_hbl', 'hbl(HabibBanklimited)'),
    ('HGFA', 'historical_data_hgfa', 'hgfa(HBLGrowthfund)'),
    ('HINOON', 'historical_data_hinoon', 'hinoon(HinopakMotorsLimited)'),
    ('HMB', 'historical_data_hmb', 'hmb(HabibMetropolitianlimited)'),
    ('HUBC', 'historical_data_hubc', 'hubc(HubPowerCompanyLimited)'),
    ('IBFL', 'historical_data_ibfl', 'ibfl(IbrahimFibresLtd)_SpecialCase'),
    ('ILP', 'historical_data_ilp', 'ilp(InterloopLimited)'),
    ('INDU', 'historical_data_indu', 'indu(IndusMotorCompanyLimited)'),
    ('INIL', 'historical_data_inil', 'inil(InternationalIndustrieslimited)'),
    ('ISL', 'historical_data_isl', 'isl(InternationalSteelsLimited)'),
    ('JVDC', 'historical_data_jvdc', 'jvdc(JavedanCorporationLimited)'),
    ('KAPCO', 'historical_data_kapco', 'kapco(KotAdduPowerCompanyLimited)'),
    ('KEL', 'historical_data_kel', 'kel(K-ElectricLimited)'),
    ('LCI', 'historical_data_lci', 'LCI(LUCKY_CORE_Industries_LTD)_SpecialCase'),
    ('LOTCHEM', 'historical_data_lotchem', 'lotchem(LotteChemicalPakistanLimited)'),
    ('LUCK', 'historical_data_luck', 'luck(LuckyCementLimited)'),
    ('MARI', 'historical_data_mari', 'mari(MariPetroleumCompanyLimited)'),
    ('MCB', 'historical_data_mcb', 'mcb(MCBBankLimited)'),
    ('MEBL', 'historical_data_mebl', 'mebl(MeezanBankLimited)'),
    ('MLCF', 'historical_data_mlcf', 'mlcf(MapleLeafCementFactoryLimited)'),
    ('MTL', 'historical_data_mtl', 'mtl(MillatTractorslimited)'),
    ('MUGHAL', 'historical_data_mughal', 'mughal(MughalIronAndIndustriesLimited)'),
    ('MUREB', 'historical_data_mureb', 'mureb(MurreeBreweryCompanyLimited)'),
    ('NATF', 'historical_data_natf', 'natf(NationalFoodsLimited)'),
    ('NBP', 'historical_data_nbp', 'nbp(NationalBankOfPakistan)'),
    ('NCL', 'historical_data_ncl', 'ncl(Nishat(Chunian)Limited)'),
    ('NESTLE', 'historical_data_nestle', 'nestle(NestlePakistanLimited)'),
    ('NML', 'historical_data_nml', 'nml(NishatMillsLimited)'),
    ('NRL', 'historical_data_nrl', 'nrl(NationalRefineryLimited)'),
    ('OGDC', 'historical_data_ogdc', 'ogdc(Oil&GasDevelopmentCompanyLimited)'),
    ('PAEL', 'historical_data_pael', 'pael(PakElektronLimited)'),
    ('PAKT', 'historical_data_pakt', 'PAKT_PAKISTAN_TOBACCO_COMPANY_LIMITED'),
    ('PGLC', 'historical_data_pglc', 'PGLC(PAKGULFLEASINGCOLTD)_SPECIALCASE'),
    ('PIBTL', 'historical_data_pibtl', 'pibtl(PakistanInternationalBulkTerminal)'),
    ('PIOC', 'historical_data_pioc', 'pioc(PioneerCementLimited)'),
    ('PKGP', 'historical_data_pkgp', 'pkgp(PakgenpowerLimited)'),
    ('PKGS', 'historical_data_pkgs', 'pkgs(PackagesLimited)'),
    ('POL', 'historical_data_pol', 'pol(PakistanOilFieldsLimited)'),
    ('POML', 'historical_data_poml', 'POML_PUNJAB_OIL_MILLS_LIMITED'),
    ('PPL', 'historical_data_ppl', 'ppl(PakistanPetroleumLimited)'),
    ('PSEL', 'historical_data_psel', 'PSEL_PAKISTAN_SERVICES_LIMITED'),
    ('PSO', 'historical_data_pso', 'pso(PakistanStateOilCompanyLimited)'),
    ('PSX', 'historical_data_psx', 'psx(PakistanStockExchange)'),
    ('PTC', 'historical_data_ptc', 'ptc(PakistanTelecommunicationCompanyLimited)'),
    ('RMPL', 'historical_data_rmpl', 'rmpl(RafhanMaizeProductsCompanyLimited)'),
    ('SCBPL', 'historical_data_scbpl', 'scbpl(StandardcharteredBanklimited)'),
    ('SEARL', 'historical_data_searl', 'searl(TheSearleCompanyLimited)'),
    ('SHEL', 'historical_data_shel', 'shel(ShellPakistanlimited)'),
    ('SHFA', 'historical_data_shfa', 'shfa(ShifainternationalHospitalsLimited)'),
    ('SML', 'historical_data_sml', 'sml(Shakarganjlimited)'),
    ('SNGP', 'historical_data_sngp', 'sngp(SuiNorthernGasPipelinesLimited)'),
    ('SPWL', 'historical_data_spwl', 'spwl(SaifPowerLimited)'),
    ('SRVI', 'historical_data_srvi', 'srvi(ServiceIndustriesLimited)'),
    ('SYS', 'historical_data_sys', 'sys(SystemsLimited)'),
    ('TGL', 'historical_data_tgl', 'tgl(TariqGlassIndustriesLimited)'),
    ('THALL', 'historical_data_thall', 'thall(ThallLimited)'),
    ('TRG', 'historical_data_trg', 'trg(TheResourcegroup)'),
    ('UBL', 'historical_data_ubl', 'ubl(UnitedBankLimited)'),
    ('UNITY', 'historical_data_unity', 'unity(UnityFoodsLimited)'),
    ('UPFL', 'historical_data_upfl', 'upfl(UniliverPakistanFoodsLimited)'),
    ('YOUW', 'historical_data_youw', 'youw(YousafWeavingMillsLtd)'),   
]

url = 'https://dps.psx.com.pk/historical'
max_retries = 5
timeout_seconds = 20

def fetch_and_store_data(symbol, table_name, stock_name):
    # Define the month and specific dates you want to scrape
    month_to_scrape = 7  # July
    #Comment this below line if you only want to web scrap by month i.e continuiation of commenting to be done on line 54 and 55
    dates_to_scrape = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]  # Dates from July 1 to July 7
    
    data = {
        'month': month_to_scrape,
        'year': 2024,
        'symbol': symbol
    }
    
    for attempt in range(max_retries):
        try:
            response = requests.post(url, data=data, timeout=timeout_seconds)
            response.raise_for_status()
            soup = BeautifulSoup(response.text, 'html.parser')
            rows = soup.findAll('tr')

            main_data = []
            for row in rows[1:]:
                row_data = [items.text.strip() for items in row.findAll('td')]
                main_data.append(row_data)

            # Convert to DataFrame
            df = pd.DataFrame(main_data, columns=['TIME', 'OPEN', 'HIGH', 'LOW', 'CLOSE', 'VOLUME'])

            # Preprocess data
            df['TIME'] = pd.to_datetime(df['TIME'], format='%b %d, %Y', errors='coerce')
            df['TIME'] = df['TIME'].dt.strftime('%Y-%m-%d')
            df['VOLUME'] = df['VOLUME'].str.replace(',', '').astype('float64')
            df['OPEN'] = pd.to_numeric(df['OPEN'].str.replace(',', ''), errors='coerce')
            df['HIGH'] = pd.to_numeric(df['HIGH'].str.replace(',', ''), errors='coerce')
            df['LOW'] = pd.to_numeric(df['LOW'].str.replace(',', ''), errors='coerce')
            df['CLOSE'] = pd.to_numeric(df['CLOSE'].str.replace(',', ''), errors='coerce')

            # Filter DataFrame for specific dates
            # comment these two line below if you want to only web scrap by month
            target_dates = [f'2024-07-{day:02d}' for day in dates_to_scrape]
            df = df[df['TIME'].isin(target_dates)]

            # Add stock_name to DataFrame
            df['STOCK_NAME'] = stock_name

            # Debug: print DataFrame after processing
            print(f"Symbol: {symbol}, Month: {month_to_scrape}, Filtered Data: {df.head()}")

            insert_data_to_db(df, table_name)
            break

        except requests.exceptions.RequestException as e:
            print(f"Attempt {attempt + 1} for {symbol} in month {month_to_scrape} failed: {e}")
            time.sleep(2 ** attempt)

    else:
        print(f"Failed to retrieve data for {symbol} in month {month_to_scrape} after several attempts")

def insert_data_to_db(df, table_name):
    try:
        conn = mysql.connector.connect(
            host='127.0.0.1',
            port=3306,
            user='root',
            password='horserock642',
            database='pakstock'
        )
        cursor = conn.cursor()

        data_to_insert = [
            (row['TIME'], row['OPEN'], row['HIGH'], row['LOW'], row['CLOSE'], row['VOLUME'], row['STOCK_NAME'])
            for _, row in df.iterrows() if pd.notnull(row['TIME'])
        ]

        cursor.executemany(f'''
            INSERT INTO {table_name} (TIME, OPEN, HIGH, LOW, CLOSE, VOLUME, STOCK_NAME)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
            ON DUPLICATE KEY UPDATE 
                OPEN = VALUES(OPEN),
                HIGH = VALUES(HIGH),
                LOW = VALUES(LOW),
                CLOSE = VALUES(CLOSE),
                VOLUME = VALUES(VOLUME),
                STOCK_NAME = VALUES(STOCK_NAME)
        ''', data_to_insert)
        conn.commit()
        print(f"Inserted {cursor.rowcount} rows for {table_name}.")

    except Error as e:
        print(f"Error: {e}")
    
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()

# Run the data fetching and storing process for each symbol
for symbol, table_name, stock_name in symbols_and_paths:
    fetch_and_store_data(symbol, table_name, stock_name)
