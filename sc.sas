OPTION DLCREATEDIR;
OPTIONS VALIDVARNAME=ANY LRECL=32767;

libname temp_lib 'C:/';

%let fmterrDefault=%sysfunc(getoption(fmterr));
options fmterr fmterr;

filename fileref 'C:/Users/jjerzerick/Documents/GitHub/WPS/ScorecardExample/Exercise Data/Accepts.csv';

data temp_lib.DS0 (keep=cust_id
age
regular_income_flg
tot_available_limit
requested_amt_l1m
requested_amt_l3m
requested_amt_l6m
requested_amt_l12m
requested_amt_l24m
requested_amt_to_income
avg_credit_cost
avg_remaining_loan_term
tot_balance_due
tot_monthly_instalment
monthly_inst_to_income
tot_credit_searches_l1m
tot_credit_searches_l3m
tot_credit_searches_l6m
tot_credit_searches_l12m
tot_credit_searches_l24m
worst_status_flg
tot_declines_l1m
tot_declines_l3m
tot_declines_l6m
tot_declines_l12m
tot_declines_l24m
active_loans_in_arrears
tot_loans_in_arrears
worst_arrears_l1m
worst_arrears_l3m
worst_arrears_l6m
worst_arrears_l12m
worst_arrears_l24m
default);
infile fileref dlm=',' dsd termstr='CRLF' encoding='WLATIN1' missover lrecl=32767 firstobs=2 end=last;
label cust_id='cust_id';
informat cust_id BEST32.;
format cust_id BEST32.;
informat cust_id_orig $6.;
label age='age';
informat age BEST32.;
format age BEST32.;
informat age_orig $2.;
label regular_income_flg='regular_income_flg';
informat regular_income_flg BEST32.;
format regular_income_flg BEST32.;
informat regular_income_flg_orig $1.;
label tot_available_limit='tot_available_limit';
informat tot_available_limit BEST32.;
format tot_available_limit BEST32.;
informat tot_available_limit_orig $7.;
label requested_amt_l1m='requested_amt_l1m';
informat requested_amt_l1m BEST32.;
format requested_amt_l1m BEST32.;
informat requested_amt_l1m_orig $7.;
label requested_amt_l3m='requested_amt_l3m';
informat requested_amt_l3m BEST32.;
format requested_amt_l3m BEST32.;
informat requested_amt_l3m_orig $7.;
label requested_amt_l6m='requested_amt_l6m';
informat requested_amt_l6m BEST32.;
format requested_amt_l6m BEST32.;
informat requested_amt_l6m_orig $7.;
label requested_amt_l12m='requested_amt_l12m';
informat requested_amt_l12m BEST32.;
format requested_amt_l12m BEST32.;
informat requested_amt_l12m_orig $7.;
label requested_amt_l24m='requested_amt_l24m';
informat requested_amt_l24m BEST32.;
format requested_amt_l24m BEST32.;
informat requested_amt_l24m_orig $7.;
label requested_amt_to_income='requested_amt_to_income';
informat requested_amt_to_income BEST32.;
format requested_amt_to_income BEST32.;
informat requested_amt_to_income_orig $6.;
label avg_credit_cost='avg_credit_cost';
informat avg_credit_cost BEST32.;
format avg_credit_cost BEST32.;
informat avg_credit_cost_orig $7.;
label avg_remaining_loan_term='avg_remaining_loan_term';
informat avg_remaining_loan_term BEST32.;
format avg_remaining_loan_term BEST32.;
informat avg_remaining_loan_term_orig $6.;
label tot_balance_due='tot_balance_due';
informat tot_balance_due BEST32.;
format tot_balance_due BEST32.;
informat tot_balance_due_orig $6.;
label tot_monthly_instalment='tot_monthly_instalment';
informat tot_monthly_instalment BEST32.;
format tot_monthly_instalment BEST32.;
informat tot_monthly_instalment_orig $6.;
label monthly_inst_to_income='monthly_inst_to_income';
informat monthly_inst_to_income BEST32.;
format monthly_inst_to_income BEST32.;
informat monthly_inst_to_income_orig $6.;
label tot_credit_searches_l1m='tot_credit_searches_l1m';
informat tot_credit_searches_l1m BEST32.;
format tot_credit_searches_l1m BEST32.;
informat tot_credit_searches_l1m_orig $2.;
label tot_credit_searches_l3m='tot_credit_searches_l3m';
informat tot_credit_searches_l3m BEST32.;
format tot_credit_searches_l3m BEST32.;
informat tot_credit_searches_l3m_orig $2.;
label tot_credit_searches_l6m='tot_credit_searches_l6m';
informat tot_credit_searches_l6m BEST32.;
format tot_credit_searches_l6m BEST32.;
informat tot_credit_searches_l6m_orig $3.;
label tot_credit_searches_l12m='tot_credit_searches_l12m';
informat tot_credit_searches_l12m BEST32.;
format tot_credit_searches_l12m BEST32.;
informat tot_credit_searches_l12m_orig $3.;
label tot_credit_searches_l24m='tot_credit_searches_l24m';
informat tot_credit_searches_l24m BEST32.;
format tot_credit_searches_l24m BEST32.;
informat tot_credit_searches_l24m_orig $3.;
label worst_status_flg='worst_status_flg';
informat worst_status_flg BEST32.;
format worst_status_flg BEST32.;
informat worst_status_flg_orig $1.;
label tot_declines_l1m='tot_declines_l1m';
informat tot_declines_l1m BEST32.;
format tot_declines_l1m BEST32.;
informat tot_declines_l1m_orig $2.;
label tot_declines_l3m='tot_declines_l3m';
informat tot_declines_l3m BEST32.;
format tot_declines_l3m BEST32.;
informat tot_declines_l3m_orig $2.;
label tot_declines_l6m='tot_declines_l6m';
informat tot_declines_l6m BEST32.;
format tot_declines_l6m BEST32.;
informat tot_declines_l6m_orig $2.;
label tot_declines_l12m='tot_declines_l12m';
informat tot_declines_l12m BEST32.;
format tot_declines_l12m BEST32.;
informat tot_declines_l12m_orig $3.;
label tot_declines_l24m='tot_declines_l24m';
informat tot_declines_l24m BEST32.;
format tot_declines_l24m BEST32.;
informat tot_declines_l24m_orig $3.;
label active_loans_in_arrears='active_loans_in_arrears';
informat active_loans_in_arrears BEST32.;
format active_loans_in_arrears BEST32.;
informat active_loans_in_arrears_orig $2.;
label tot_loans_in_arrears='tot_loans_in_arrears';
informat tot_loans_in_arrears BEST32.;
format tot_loans_in_arrears BEST32.;
informat tot_loans_in_arrears_orig $2.;
label worst_arrears_l1m='worst_arrears_l1m';
informat worst_arrears_l1m BEST32.;
format worst_arrears_l1m BEST32.;
informat worst_arrears_l1m_orig $3.;
label worst_arrears_l3m='worst_arrears_l3m';
informat worst_arrears_l3m BEST32.;
format worst_arrears_l3m BEST32.;
informat worst_arrears_l3m_orig $3.;
label worst_arrears_l6m='worst_arrears_l6m';
informat worst_arrears_l6m BEST32.;
format worst_arrears_l6m BEST32.;
informat worst_arrears_l6m_orig $3.;
label worst_arrears_l12m='worst_arrears_l12m';
informat worst_arrears_l12m BEST32.;
format worst_arrears_l12m BEST32.;
informat worst_arrears_l12m_orig $3.;
label worst_arrears_l24m='worst_arrears_l24m';
informat worst_arrears_l24m BEST32.;
format worst_arrears_l24m BEST32.;
informat worst_arrears_l24m_orig $3.;
label default='default';
informat default BEST32.;
format default BEST32.;
informat default_orig $1.;
hasErrors = 0;
obsNum = _n_;
colIndex = 0;
input cust_id_orig $
age_orig $
regular_income_flg_orig $
tot_available_limit_orig $
requested_amt_l1m_orig $
requested_amt_l3m_orig $
requested_amt_l6m_orig $
requested_amt_l12m_orig $
requested_amt_l24m_orig $
requested_amt_to_income_orig $
avg_credit_cost_orig $
avg_remaining_loan_term_orig $
tot_balance_due_orig $
tot_monthly_instalment_orig $
monthly_inst_to_income_orig $
tot_credit_searches_l1m_orig $
tot_credit_searches_l3m_orig $
tot_credit_searches_l6m_orig $
tot_credit_searches_l12m_orig $
tot_credit_searches_l24m_orig $
worst_status_flg_orig $
tot_declines_l1m_orig $
tot_declines_l3m_orig $
tot_declines_l6m_orig $
tot_declines_l12m_orig $
tot_declines_l24m_orig $
active_loans_in_arrears_orig $
tot_loans_in_arrears_orig $
worst_arrears_l1m_orig $
worst_arrears_l3m_orig $
worst_arrears_l6m_orig $
worst_arrears_l12m_orig $
worst_arrears_l24m_orig $
default_orig $;
cust_id = input(strip(cust_id_orig), BEST32.);
age = input(strip(age_orig), BEST32.);
regular_income_flg = input(strip(regular_income_flg_orig), BEST32.);
tot_available_limit = input(strip(tot_available_limit_orig), BEST32.);
requested_amt_l1m = input(strip(requested_amt_l1m_orig), BEST32.);
requested_amt_l3m = input(strip(requested_amt_l3m_orig), BEST32.);
requested_amt_l6m = input(strip(requested_amt_l6m_orig), BEST32.);
requested_amt_l12m = input(strip(requested_amt_l12m_orig), BEST32.);
requested_amt_l24m = input(strip(requested_amt_l24m_orig), BEST32.);
requested_amt_to_income = input(strip(requested_amt_to_income_orig), BEST32.);
avg_credit_cost = input(strip(avg_credit_cost_orig), BEST32.);
avg_remaining_loan_term = input(strip(avg_remaining_loan_term_orig), BEST32.);
tot_balance_due = input(strip(tot_balance_due_orig), BEST32.);
tot_monthly_instalment = input(strip(tot_monthly_instalment_orig), BEST32.);
monthly_inst_to_income = input(strip(monthly_inst_to_income_orig), BEST32.);
tot_credit_searches_l1m = input(strip(tot_credit_searches_l1m_orig), BEST32.);
tot_credit_searches_l3m = input(strip(tot_credit_searches_l3m_orig), BEST32.);
tot_credit_searches_l6m = input(strip(tot_credit_searches_l6m_orig), BEST32.);
tot_credit_searches_l12m = input(strip(tot_credit_searches_l12m_orig), BEST32.);
tot_credit_searches_l24m = input(strip(tot_credit_searches_l24m_orig), BEST32.);
worst_status_flg = input(strip(worst_status_flg_orig), BEST32.);
tot_declines_l1m = input(strip(tot_declines_l1m_orig), BEST32.);
tot_declines_l3m = input(strip(tot_declines_l3m_orig), BEST32.);
tot_declines_l6m = input(strip(tot_declines_l6m_orig), BEST32.);
tot_declines_l12m = input(strip(tot_declines_l12m_orig), BEST32.);
tot_declines_l24m = input(strip(tot_declines_l24m_orig), BEST32.);
active_loans_in_arrears = input(strip(active_loans_in_arrears_orig), BEST32.);
tot_loans_in_arrears = input(strip(tot_loans_in_arrears_orig), BEST32.);
worst_arrears_l1m = input(strip(worst_arrears_l1m_orig), BEST32.);
worst_arrears_l3m = input(strip(worst_arrears_l3m_orig), BEST32.);
worst_arrears_l6m = input(strip(worst_arrears_l6m_orig), BEST32.);
worst_arrears_l12m = input(strip(worst_arrears_l12m_orig), BEST32.);
worst_arrears_l24m = input(strip(worst_arrears_l24m_orig), BEST32.);
default = input(strip(default_orig), BEST32.);
output temp_lib.DS0;
run;

options fmterr &fmterrDefault;

* WOE Transform : 36a0defc-68a5-4763-bfe9-6d402a5a49bd;
* ;DATA temp_lib.DS1;
SET temp_lib.DS0;
/* Dependent variable default */
IF MISSING(avg_credit_cost) THEN DO;
    /* No WOE value assigned for this segment */
END;
ELSE IF avg_credit_cost<=9.49 THEN DO;
    WOE_avg_credit_cost = 0.7941126380092877;
END;
ELSE IF avg_credit_cost>9.49 AND avg_credit_cost<=48.9 THEN DO;
    WOE_avg_credit_cost = 0.4191857053633075;
END;
ELSE IF avg_credit_cost>48.9 AND avg_credit_cost<=101.25 THEN DO;
    WOE_avg_credit_cost = 0.15706325197928894;
END;
ELSE IF avg_credit_cost>101.25 AND avg_credit_cost<=261.38 THEN DO;
    WOE_avg_credit_cost = -0.3120722128453657;
END;
ELSE IF avg_credit_cost>261.38 THEN DO;
    WOE_avg_credit_cost = -0.6666979884093267;
END;

IF MISSING(tot_balance_due) THEN DO;
    /* No WOE value assigned for this segment */
END;
ELSE IF tot_balance_due<10.0 THEN DO;
    WOE_tot_balance_due = 0.3767875311045534;
END;
ELSE IF tot_balance_due>=10.0 AND tot_balance_due<=86.0 THEN DO;
    WOE_tot_balance_due = -0.0026997595835022326;
END;
ELSE IF tot_balance_due>86.0 AND tot_balance_due<=1245.0 THEN DO;
    WOE_tot_balance_due = -0.5181704029814528;
END;
ELSE IF tot_balance_due>1245.0 THEN DO;
    WOE_tot_balance_due = -1.060176935717282;
END;

IF MISSING(tot_monthly_instalment) THEN DO;
    /* No WOE value assigned for this segment */
END;
ELSE IF tot_monthly_instalment<=1081.0 THEN DO;
    WOE_tot_monthly_instalment = 0.30467285174986375;
END;
ELSE IF tot_monthly_instalment>1081.0 AND tot_monthly_instalment<=2865.0 THEN DO;
    WOE_tot_monthly_instalment = 0.08258928369865637;
END;
ELSE IF tot_monthly_instalment>2865.0 THEN DO;
    WOE_tot_monthly_instalment = -0.3442066011822205;
END;

IF MISSING(monthly_inst_to_income) THEN DO;
    /* No WOE value assigned for this segment */
END;
ELSE IF monthly_inst_to_income<0.5 THEN DO;
    WOE_monthly_inst_to_income = 0.28749094730995395;
END;
ELSE IF monthly_inst_to_income>=0.5 AND monthly_inst_to_income<=1.11 THEN DO;
    WOE_monthly_inst_to_income = 0.15819533716875334;
END;
ELSE IF monthly_inst_to_income>1.11 AND monthly_inst_to_income<=2.07 THEN DO;
    WOE_monthly_inst_to_income = -0.1831888898314241;
END;
ELSE IF monthly_inst_to_income>2.07 THEN DO;
    WOE_monthly_inst_to_income = -0.48465194265043976;
END;

IF MISSING(active_loans_in_arrears) THEN DO;
    /* No WOE value assigned for this segment */
END;
ELSE IF active_loans_in_arrears<=0.0 THEN DO;
    WOE_active_loans_in_arrears = -0.8250868118500999;
END;
ELSE IF active_loans_in_arrears>0.0 AND active_loans_in_arrears<=1.0 THEN DO;
    WOE_active_loans_in_arrears = -0.19567201731762784;
END;
ELSE IF active_loans_in_arrears>1.0 AND active_loans_in_arrears<=4.0 THEN DO;
    WOE_active_loans_in_arrears = 0.18331802580353157;
END;
ELSE IF active_loans_in_arrears>4.0 THEN DO;
    WOE_active_loans_in_arrears = 0.6322045259544012;
END;

IF MISSING(tot_loans_in_arrears) THEN DO;
    /* No WOE value assigned for this segment */
END;
ELSE IF tot_loans_in_arrears<=0.0 THEN DO;
    WOE_tot_loans_in_arrears = 0.15380974319317042;
END;
ELSE IF tot_loans_in_arrears>0.0 THEN DO;
    WOE_tot_loans_in_arrears = -0.5559066505226182;
END;

IF MISSING(worst_arrears_l1m) THEN DO;
    /* No WOE value assigned for this segment */
END;
ELSE IF worst_arrears_l1m<=1.0 THEN DO;
    WOE_worst_arrears_l1m = 0.23465616639960057;
END;
ELSE IF worst_arrears_l1m>1.0 AND worst_arrears_l1m<=5.0 THEN DO;
    WOE_worst_arrears_l1m = -0.08399934361604969;
END;
ELSE IF worst_arrears_l1m>5.0 AND worst_arrears_l1m<=9.0 THEN DO;
    WOE_worst_arrears_l1m = -0.7358681176834176;
END;
ELSE IF worst_arrears_l1m>9.0 THEN DO;
    WOE_worst_arrears_l1m = -1.5016172242727537;
END;

IF MISSING(worst_arrears_l3m) THEN DO;
    /* No WOE value assigned for this segment */
END;
ELSE IF worst_arrears_l3m<=4.0 THEN DO;
    WOE_worst_arrears_l3m = 0.21649707656858805;
END;
ELSE IF worst_arrears_l3m>4.0 AND worst_arrears_l3m<=8.0 THEN DO;
    WOE_worst_arrears_l3m = -0.28679798607445056;
END;
ELSE IF worst_arrears_l3m>8.0 AND worst_arrears_l3m<=12.0 THEN DO;
    WOE_worst_arrears_l3m = -0.8763622444257535;
END;
ELSE IF worst_arrears_l3m>12.0 THEN DO;
    WOE_worst_arrears_l3m = -1.5345989342210875;
END;

IF MISSING(worst_arrears_l6m) THEN DO;
    /* No WOE value assigned for this segment */
END;
ELSE IF worst_arrears_l6m<=-1.0 THEN DO;
    WOE_worst_arrears_l6m = 0.5861620146287392;
END;
ELSE IF worst_arrears_l6m>-1.0 AND worst_arrears_l6m<=2.0 THEN DO;
    WOE_worst_arrears_l6m = 0.2903779584374125;
END;
ELSE IF worst_arrears_l6m>2.0 AND worst_arrears_l6m<=8.0 THEN DO;
    WOE_worst_arrears_l6m = -0.5405621863604673;
END;
ELSE IF worst_arrears_l6m>8.0 THEN DO;
    WOE_worst_arrears_l6m = -1.4628854499730912;
END;

IF MISSING(worst_arrears_l24m) THEN DO;
    /* No WOE value assigned for this segment */
END;
ELSE IF worst_arrears_l24m<=0.0 THEN DO;
    WOE_worst_arrears_l24m = 0.739208187987202;
END;
ELSE IF worst_arrears_l24m>0.0 AND worst_arrears_l24m<=7.0 THEN DO;
    WOE_worst_arrears_l24m = -0.004958037377193672;
END;
ELSE IF worst_arrears_l24m>7.0 AND worst_arrears_l24m<=14.0 THEN DO;
    WOE_worst_arrears_l24m = -0.8618606687981205;
END;
ELSE IF worst_arrears_l24m>14.0 THEN DO;
    WOE_worst_arrears_l24m = -1.2200280932403034;
END;RUN;
* Partition : 07ec3641-a206-4e49-941e-4b8345f7b377;


proc sql noprint;
    select count(*) into :nb_records
    from temp_lib.DS1;
quit;

data temp_lib.DS2 temp_lib.DS3;
    set temp_lib.DS1;
    retain __rem0 __rem1;
    if _n_ = 1 then do;
        __rem0 = round(&nb_records * 0.7);
        __rem1 = &nb_records - (__rem0);
    end;
    __p = ranuni(1000);
    if __p < __rem0 / (__rem0 + __rem1) then do;
        __rem0 = __rem0 - 1;
        output temp_lib.DS2;
    end;
    else do;
        __rem1 = __rem1 - 1;
        output temp_lib.DS3;
    end;
    drop __p __rem0 __rem1;
RUN;
* Train logistic regression : f07e9e33-80cc-4475-b25e-e922217aa7e8;
%macro logistic_train_model(inputData, parameterEstimatesData, modelDataset,
dependentVariable,
classVariables,
dependentVariableCategory,
effectVariables,
fast,
frequencyVariable,
intercept,
linkFunction,
selectionMethod,
singular,
slentry,
slstay,
weightVariable
);

data classVariables;
  i=1;
  do while(scanq("&classVariables",i,',') ne '');
    varName = dequote(scanq("&classVariables",i,','));
    output;
    i = i+1;
  end;
  drop i;
run;
data effectVariables;
  i=1;
  do while(scanq("&effectVariables",i,',') ne '');
    varName = dequote(scanq("&effectVariables",i,','));
    output;
    i = i+1;
  end;
  drop i;
run;

%local varnameOption;
%let varnameOption=%sysfunc(getoption(validvarname));
options validvarname=v7;
proc sql noprint;
select nliteral(varName) into :effectVariables separated by ' ' from effectVariables;
select nliteral(varName) into :classVariables separated by ' ' from classVariables;
quit;
options validvarname=&varnameOption;
proc datasets library=work nolist;
delete effectVariables;
quit;
proc datasets library=work nolist;
delete classVariables;
quit;

%local hasOddsRatios;
%local isScore;
%local isStepwise;
%local isForward;
%local isBackward;
%local isNone;

%let hasOddsRatios=%lowcase(&linkFunction) ne probit and %lowcase(&linkFunction) ne cloglog;
%let isScore=%lowcase(&selectionMethod) eq score;
%let isStepwise=%lowcase(&selectionMethod) eq stepwise;
%let isForward=%lowcase(&selectionMethod) eq forward;
%let isBackward=%lowcase(&selectionMethod) eq backward;
%let isNone=%lowcase(&selectionMethod) eq none;

ods _all_ close;
proc logistic data=&inputData %if not(&modelDataset=) %then outmodel=&modelDataset;;
ods output ModelInfo = ModelInfo;
ods output Nobs = Nobs;
ods output ResponseProfile = ResponseProfile;
%if not(&classVariables=) %then %do;
%if (((&sysver = 4.01) and (&sysvlong >= 04.01.08.00.018283)) or 
((&sysver = 4.02) and (&sysvlong >= 04.02.05.00.011574)) or
((&sysver = 4.03) and (&sysvlong >= 04.03.01.00.008363)) or
(&sysvlong >= 04.04.00.01.000123) or
(%sysfunc(prxmatch(/\d\d.\d\d.00.00.\d{6}/, &sysvlong)))) %then %do;
  ods output ModelANOVA = ModelANOVA;
%end;
%else %do;
  ods output Type3 = ModelANOVA;
%end;
%end;
%if &isScore %then %do;
  ods output BestSubsets = BestSubsets; %end;
%else %do;
  ods output ParameterEstimates = &parameterEstimatesData;
  ods output Association = Association;
  %if &hasOddsRatios %then %do;
    ods output OddsRatios = OddsRatios; 
  %end;
  ods output GlobalTests = GlobalTests;
  ods output FitStatistics = FitStatistics;
%end;
%if not(&classVariables=) %then class &classVariables;;

model &dependentVariable
  %if not(&dependentVariableCategory=) %then (event="&dependentVariableCategory"); = &effectVariables /
  %if not(&intercept) %then noint; 
  %if &fast and (&isStepwise or &isBackward) %then fast; 
  %if &isStepwise %then slentry=&slEntry slstay=&slStay;
  %else %if &isForward %then slentry=&slEntry;
  %else %if &isBackward %then slstay=&slStay;
  singular=&singular
  selection=&selectionMethod
  link=&linkFunction
  stb;
filename _code temp encoding=utf8;
code file=_code;
%if not (&frequencyVariable=) %then %do; freq &frequencyVariable; %end;
%if not (&weightVariable=) %then %do; weight &weightVariable; %end;
run;

%if %sysfunc(exist(FitStatistics)) and %sysfunc(exist(GlobalTests)) %then %do;
data StepStats;
set FitStatistics GlobalTests;
run;
%if not(&isNone) %then %do;

proc sort data=StepStats;
by step;
run;

data StepStats;
set StepStats;
drop step;
run;
%end;
%end;

%mend logistic_train_model;


%logistic_train_model(inputData=temp_lib.DS2, 
  parameterEstimatesData=ParameterEstimates,
  modelDataset=temp_lib.DS4,
  dependentVariable=default,
  classVariables=%NRSTR(),
  dependentVariableCategory=1,
  effectVariables=%NRSTR(%'WOE_avg_credit_cost%',%'WOE_tot_balance_due%',%'WOE_tot_monthly_instalment%',%'WOE_monthly_inst_to_income%',%'WOE_active_loans_in_arrears%',%'WOE_tot_loans_in_arrears%',%'WOE_worst_arrears_l1m%',%'WOE_worst_arrears_l3m%',%'WOE_worst_arrears_l6m%',%'WOE_worst_arrears_l24m%'),
  fast=0,
  frequencyVariable=%NRSTR(),
  intercept=1,
  linkFunction=logit,
  selectionMethod=stepwise,
  singular=1.0E-8,
  slentry=0.05,
  slstay=0.05,
  weightVariable=%NRSTR()
);

proc catalog catalog=sasmacr et=macro;
delete logistic_train_model;
run;


proc logistic inmodel=temp_lib.DS4;
score data=temp_lib.DS3 out=temp_lib.DS6;
run;
proc logistic inmodel=temp_lib.DS4;
score data=temp_lib.DS2 out=temp_lib.DS7;
run;
*Encode the input data set into a series of 1' and 0's.;
data UnsortedEventData(keep=default P_1 eventLevel);
set temp_lib.DS7(keep=default P_1) end=_last_;
retain numEvents 0 numNonEvents 0;

if MISSING(default) or MISSING(P_1) then delete;
else if (default eq 1.0) then do;
    eventLevel = 1;
    numEvents + 1;
end;
else do;
    eventLevel = 0;
    numNonEvents + 1;
end;

if (_last_) then do;
    call symput("totalPos", numEvents);
    call symput("totalNeg", numNonEvents);
    call symput("truthType", vtype(default));
end;
run;

*Sort the event data into decending order with respect;
*to the prediction probability;
proc sort data=UnsortedEventData out=EventDataDesc;
by descending P_1;
run;


*---------------------------------------;
* Compute the lift curve and Gains chart;
*---------------------------------------;
data LiftData1(keep=Decile eventPercent eventCumPercent);
set EventDataDesc nobs=numObs end=_last_;
retain obsCount 0 sumPos 0 cumSumPos 0 pointsPerDecile 0 nextCutPoint 0;

obsCount + 1;
if (obsCount eq 1) then do;
    pointsPerDecile = numObs / 10;
    nextCutPoint + pointsPerDecile;

    *Output zero percent for zero decile.;
    Decile = 0;
    eventPercent = 0;
    eventCumPercent = 0;
    output;
end;

if (eventLevel eq 1) then sumPos + 1;

if ((obsCount gt nextCutPoint) or _last_) then do;
    *Output cumulate percentage and percent of observations;
    *in this bin;
    Decile = nextCutPoint / pointsPerDecile;
    cumSumPos = cumSumPos + sumPos;
    eventPercent = (sumPos / &totalPos) * 100;
    eventCumPercent = (cumSumPos / &totalPos) * 100;
    output;

    *Reset the sum of positive events to zero and compute;
    *the next cut point.;
    sumPos = 0;
    if (^_last_) then
        do while (obsCount gt nextCutPoint);
            nextCutPoint + pointsPerDecile;
        end;
end;
run;

*-----------------------------------;
*Compute the Kolmogorov-Smirnov curve;
*-----------------------------------;
data KSCurveData1(keep=binValue eventPercent nonEventPercent KSStat);
set EventDataDesc nobs=numObs end=_last_;
retain obsCount 0 cumSumPos 0 cumSumNeg 0 pointsPerBin 0 nextCutPoint 0;

*Compute the number of points per bin and output stats for zero bin.;
obsCount + 1;
if (obsCount eq 1) then do;
    pointsPerBin = numObs / 100;
    nextCutPoint + numPointsPerBin;

    *Output zero bin stats;
    binValue = 0;
    eventPercent = 0;
    nonEventPercent = 0;
    KSStat = 0;
    output;
end;

*Add 1 to either the cumulate sum of the positive or negative events;
if (eventLevel eq 1) then cumSumPos + 1;
else cumSumNeg + 1;

if ((obsCount gt nextCutPoint) or _last_) then do;
    *Output the statistics to the output data set.;
    binValue = nextCutPoint / pointsPerBin;
    eventPercent = (cumSumPos / &totalPos) * 100;
    nonEventPercent = (cumSumNeg / &totalNeg) * 100;
    KSStat = abs(eventPercent - nonEventPercent);
    output;

    *Update to the next cut point.;
    if (^_last_) then
        do while (obsCount gt nextCutPoint);
            nextCutPoint + pointsPerBin;
        end;
end;
run;

*-----------------------------------;
*Compute the ROC curve data.
*-----------------------------------;
%let binwidth = 0.01;
data ROCData1(keep=Sensitivity OneMinusSpecificity);
set EventDataDesc end=_last_;
retain binWidthSum &binwidth posEventTotal 0 negNonEventTotal &totalNeg nonEventSum 0;

if (P_1 lt 1-binWidthSum) then do;
    Sensitivity = posEventTotal / &totalPos;
    OneMinusSpecificity = 1 - (negNonEventTotal / &totalNeg);
    output;
    do while (P_1 lt 1-binWidthSum);
        binWidthSum + &binwidth;
    end;
end;
else if (_N_ eq 1) then do;
    Sensitivity = 0;
    OneMinusSpecificity = 0;
    output;
end;

if (eventLevel eq 0) then nonEventSum + 1;
else posEventTotal + 1;

negNonEventTotal = &totalNeg - nonEventSum;

if (_last_) then do;
    Sensitivity = 1;
    OneMinusSpecificity = 1;
    output;
end;
run;

*-----------------------------------;
*Compute the output summary statistics;
*-----------------------------------;
data SummaryStats1(keep=N Accuracy Sensitivity Specificity Precision f1Score NegPredValue trueNegSum truePosSum falseNegSum falsePosSum);
set EventDataDesc end=_last_ nobs=numObs;

*Compute the contribution to the confusion matrix counts.;
N=0;
trueNeg = 0;
falseNeg = 0;
falsePos = 0;
truePos    = 0;
prediction = 0;
if (P_1 gt 0.5) then do;
    prediction = 1;
    if (eventLevel eq 1) then truePos = 1;
    else falsePos = 1;
end;
else do;
    if (eventLevel eq 1) then falseNeg = 1;
    else trueNeg = 1;
end;
trueNegSum + trueNeg;
truePosSum + truePos;
falseNegSum + falseNeg;
falsePosSum + falsePos;

*Computes the summary statistics for the last observation.;
if _last_ then do;
	N=numObs;
    Accuracy = (truePosSum + trueNegSum) / numObs;
    Sensitivity = truePosSum / (truePosSum + falseNegSum);
    Specificity = trueNegSum / (trueNegSum + falsePosSum);
    Precision = truePosSum / (truePosSum + falsePosSum);
    Recall = truePosSum / (truePosSum + falseNegSum);
    NegPredValue = trueNegSum / (trueNegSum + falseNegSum);
    f1Score = 2.0 * truePosSum / (2.0 * truePosSum + falsePosSum + falseNegSum);
    output;
end;
run;

*-----------------------------------;
*Use Proc Logistic to compute the area under the curve;
*-----------------------------------;
ods output RocAssociation = cStatData(keep=area);
proc logistic data=EventDataDesc;
model eventLevel(event='1') = / nofit;
roc 'roc' pred=P_1;
run;

*Use PROC SUMMARY to compute the maximum KSSTAT value.;
proc summary data=KSCurveData1;
var KSStat;
output out=MaxKSStat(keep=KSStat) max=KSStat;
run;

* Output the truth category and the false category in a dataset;
data falseCatDs(keep=falseCategory truthCategory);
set EventDataDesc(keep=default);
length truthCategory $32 falseCategory $32;
if not (default eq 1.0) then do;
    %if &truthType = N %then %do;
        falseCategory = put(default, BEST32.);
        truthCategory = put(1.0, BEST32.);
    %end;
    %else %do;
        falseCategory = default;
        truthCategory = 1.0;
    %end;
    output;
    stop;
end;
run;

%symdel truthType / nowarn;

*Add the C-statistic and K-S statistic to the summary;
*statistics data set.;
data SummaryStats1;
Name="dev_scored";
merge SummaryStats1 cStatData MaxKSStat falseCatDs;
gini = 2 * Area - 1;
run;

%if %sysfunc(exist(AllStats)) %then %do;
data AllStats;
set AllStats SummaryStats1;
run;
%end;
%else %do;
data AllStats;
length Name $32767;
set SummaryStats1;
run;
%end;*Encode the input data set into a series of 1' and 0's.;
data UnsortedEventData(keep=default P_1 eventLevel);
set temp_lib.DS6(keep=default P_1) end=_last_;
retain numEvents 0 numNonEvents 0;

if MISSING(default) or MISSING(P_1) then delete;
else if (default eq 1.0) then do;
    eventLevel = 1;
    numEvents + 1;
end;
else do;
    eventLevel = 0;
    numNonEvents + 1;
end;

if (_last_) then do;
    call symput("totalPos", numEvents);
    call symput("totalNeg", numNonEvents);
    call symput("truthType", vtype(default));
end;
run;

*Sort the event data into decending order with respect;
*to the prediction probability;
proc sort data=UnsortedEventData out=EventDataDesc;
by descending P_1;
run;


*---------------------------------------;
* Compute the lift curve and Gains chart;
*---------------------------------------;
data LiftData2(keep=Decile eventPercent eventCumPercent);
set EventDataDesc nobs=numObs end=_last_;
retain obsCount 0 sumPos 0 cumSumPos 0 pointsPerDecile 0 nextCutPoint 0;

obsCount + 1;
if (obsCount eq 1) then do;
    pointsPerDecile = numObs / 10;
    nextCutPoint + pointsPerDecile;

    *Output zero percent for zero decile.;
    Decile = 0;
    eventPercent = 0;
    eventCumPercent = 0;
    output;
end;

if (eventLevel eq 1) then sumPos + 1;

if ((obsCount gt nextCutPoint) or _last_) then do;
    *Output cumulate percentage and percent of observations;
    *in this bin;
    Decile = nextCutPoint / pointsPerDecile;
    cumSumPos = cumSumPos + sumPos;
    eventPercent = (sumPos / &totalPos) * 100;
    eventCumPercent = (cumSumPos / &totalPos) * 100;
    output;

    *Reset the sum of positive events to zero and compute;
    *the next cut point.;
    sumPos = 0;
    if (^_last_) then
        do while (obsCount gt nextCutPoint);
            nextCutPoint + pointsPerDecile;
        end;
end;
run;

*-----------------------------------;
*Compute the Kolmogorov-Smirnov curve;
*-----------------------------------;
data KSCurveData2(keep=binValue eventPercent nonEventPercent KSStat);
set EventDataDesc nobs=numObs end=_last_;
retain obsCount 0 cumSumPos 0 cumSumNeg 0 pointsPerBin 0 nextCutPoint 0;

*Compute the number of points per bin and output stats for zero bin.;
obsCount + 1;
if (obsCount eq 1) then do;
    pointsPerBin = numObs / 100;
    nextCutPoint + numPointsPerBin;

    *Output zero bin stats;
    binValue = 0;
    eventPercent = 0;
    nonEventPercent = 0;
    KSStat = 0;
    output;
end;

*Add 1 to either the cumulate sum of the positive or negative events;
if (eventLevel eq 1) then cumSumPos + 1;
else cumSumNeg + 1;

if ((obsCount gt nextCutPoint) or _last_) then do;
    *Output the statistics to the output data set.;
    binValue = nextCutPoint / pointsPerBin;
    eventPercent = (cumSumPos / &totalPos) * 100;
    nonEventPercent = (cumSumNeg / &totalNeg) * 100;
    KSStat = abs(eventPercent - nonEventPercent);
    output;

    *Update to the next cut point.;
    if (^_last_) then
        do while (obsCount gt nextCutPoint);
            nextCutPoint + pointsPerBin;
        end;
end;
run;

*-----------------------------------;
*Compute the ROC curve data.
*-----------------------------------;
%let binwidth = 0.01;
data ROCData2(keep=Sensitivity OneMinusSpecificity);
set EventDataDesc end=_last_;
retain binWidthSum &binwidth posEventTotal 0 negNonEventTotal &totalNeg nonEventSum 0;

if (P_1 lt 1-binWidthSum) then do;
    Sensitivity = posEventTotal / &totalPos;
    OneMinusSpecificity = 1 - (negNonEventTotal / &totalNeg);
    output;
    do while (P_1 lt 1-binWidthSum);
        binWidthSum + &binwidth;
    end;
end;
else if (_N_ eq 1) then do;
    Sensitivity = 0;
    OneMinusSpecificity = 0;
    output;
end;

if (eventLevel eq 0) then nonEventSum + 1;
else posEventTotal + 1;

negNonEventTotal = &totalNeg - nonEventSum;

if (_last_) then do;
    Sensitivity = 1;
    OneMinusSpecificity = 1;
    output;
end;
run;

*-----------------------------------;
*Compute the output summary statistics;
*-----------------------------------;
data SummaryStats2(keep=N Accuracy Sensitivity Specificity Precision f1Score NegPredValue trueNegSum truePosSum falseNegSum falsePosSum);
set EventDataDesc end=_last_ nobs=numObs;

*Compute the contribution to the confusion matrix counts.;
N=0;
trueNeg = 0;
falseNeg = 0;
falsePos = 0;
truePos    = 0;
prediction = 0;
if (P_1 gt 0.5) then do;
    prediction = 1;
    if (eventLevel eq 1) then truePos = 1;
    else falsePos = 1;
end;
else do;
    if (eventLevel eq 1) then falseNeg = 1;
    else trueNeg = 1;
end;
trueNegSum + trueNeg;
truePosSum + truePos;
falseNegSum + falseNeg;
falsePosSum + falsePos;

*Computes the summary statistics for the last observation.;
if _last_ then do;
	N=numObs;
    Accuracy = (truePosSum + trueNegSum) / numObs;
    Sensitivity = truePosSum / (truePosSum + falseNegSum);
    Specificity = trueNegSum / (trueNegSum + falsePosSum);
    Precision = truePosSum / (truePosSum + falsePosSum);
    Recall = truePosSum / (truePosSum + falseNegSum);
    NegPredValue = trueNegSum / (trueNegSum + falseNegSum);
    f1Score = 2.0 * truePosSum / (2.0 * truePosSum + falsePosSum + falseNegSum);
    output;
end;
run;

*-----------------------------------;
*Use Proc Logistic to compute the area under the curve;
*-----------------------------------;
ods output RocAssociation = cStatData(keep=area);
proc logistic data=EventDataDesc;
model eventLevel(event='1') = / nofit;
roc 'roc' pred=P_1;
run;

*Use PROC SUMMARY to compute the maximum KSSTAT value.;
proc summary data=KSCurveData2;
var KSStat;
output out=MaxKSStat(keep=KSStat) max=KSStat;
run;

* Output the truth category and the false category in a dataset;
data falseCatDs(keep=falseCategory truthCategory);
set EventDataDesc(keep=default);
length truthCategory $32 falseCategory $32;
if not (default eq 1.0) then do;
    %if &truthType = N %then %do;
        falseCategory = put(default, BEST32.);
        truthCategory = put(1.0, BEST32.);
    %end;
    %else %do;
        falseCategory = default;
        truthCategory = 1.0;
    %end;
    output;
    stop;
end;
run;

%symdel truthType / nowarn;

*Add the C-statistic and K-S statistic to the summary;
*statistics data set.;
data SummaryStats2;
Name="test_scored";
merge SummaryStats2 cStatData MaxKSStat falseCatDs;
gini = 2 * Area - 1;
run;

%if %sysfunc(exist(AllStats)) %then %do;
data AllStats;
set AllStats SummaryStats2;
run;
%end;
%else %do;
data AllStats;
length Name $32767;
set SummaryStats2;
run;
%end;
data temp_lib.DS8;
infile datalines dsd dlm=' ';
format active_loans_in_arrears BEST32.;
format avg_credit_cost BEST32.;
format monthly_inst_to_income BEST32.;
format tot_balance_due BEST32.;
format tot_loans_in_arrears BEST32.;
format tot_monhly_instalment BEST32.;
format worst_arrears_l24m BEST32.;
format worst_arrears_l6m BEST32.;
input active_loans_in_arrears avg_credit_cost monthly_inst_to_income tot_balance_due tot_loans_in_arrears tot_monhly_instalment worst_arrears_l24m worst_arrears_l6m;
datalines;
1 100.0 .6 1000 1 1081 7 6
;

%let fmterrDefault=%sysfunc(getoption(fmterr));
options fmterr fmterr;

filename fileref 'C:/Users/jjerzerick/Documents/GitHub/WPS/ScorecardExample/Exercise Data/new.csv';

data temp_lib.DS9 (keep=age
regular_income_flg
tot_available_limit
requested_amt_l1m
requested_amt_l3m
requested_amt_l6m
requested_amt_l12m
requested_amt_l24m
requested_amt_to_income
avg_credit_cost
avg_remaining_loan_term
tot_balance_due
tot_monthly_instalment
monthly_inst_to_income
tot_credit_searches_l1m
tot_credit_searches_l3m
tot_credit_searches_l6m
tot_credit_searches_l12m
tot_credit_searches_l24m
worst_status_flg
tot_declines_l1m
tot_declines_l3m
tot_declines_l6m
tot_declines_l12m
tot_declines_l24m
active_loans_in_arrears
tot_loans_in_arrears
worst_arrears_l1m
worst_arrears_l3m
worst_arrears_l6m
worst_arrears_l12m
worst_arrears_l24m
default);
infile fileref dlm=',' dsd termstr='CRLF' encoding='WLATIN1' missover lrecl=32767 firstobs=2 end=last;
label age='age';
informat age BEST32.;
format age BEST32.;
informat age_orig $2.;
label regular_income_flg='regular_income_flg';
informat regular_income_flg BEST32.;
format regular_income_flg BEST32.;
informat regular_income_flg_orig $1.;
label tot_available_limit='tot_available_limit';
informat tot_available_limit BEST32.;
format tot_available_limit BEST32.;
informat tot_available_limit_orig $7.;
label requested_amt_l1m='requested_amt_l1m';
informat requested_amt_l1m BEST32.;
format requested_amt_l1m BEST32.;
informat requested_amt_l1m_orig $7.;
label requested_amt_l3m='requested_amt_l3m';
informat requested_amt_l3m BEST32.;
format requested_amt_l3m BEST32.;
informat requested_amt_l3m_orig $7.;
label requested_amt_l6m='requested_amt_l6m';
informat requested_amt_l6m BEST32.;
format requested_amt_l6m BEST32.;
informat requested_amt_l6m_orig $7.;
label requested_amt_l12m='requested_amt_l12m';
informat requested_amt_l12m BEST32.;
format requested_amt_l12m BEST32.;
informat requested_amt_l12m_orig $7.;
label requested_amt_l24m='requested_amt_l24m';
informat requested_amt_l24m BEST32.;
format requested_amt_l24m BEST32.;
informat requested_amt_l24m_orig $7.;
label requested_amt_to_income='requested_amt_to_income';
informat requested_amt_to_income BEST32.;
format requested_amt_to_income BEST32.;
informat requested_amt_to_income_orig $6.;
label avg_credit_cost='avg_credit_cost';
informat avg_credit_cost BEST32.;
format avg_credit_cost BEST32.;
informat avg_credit_cost_orig $7.;
label avg_remaining_loan_term='avg_remaining_loan_term';
informat avg_remaining_loan_term BEST32.;
format avg_remaining_loan_term BEST32.;
informat avg_remaining_loan_term_orig $6.;
label tot_balance_due='tot_balance_due';
informat tot_balance_due BEST32.;
format tot_balance_due BEST32.;
informat tot_balance_due_orig $6.;
label tot_monthly_instalment='tot_monthly_instalment';
informat tot_monthly_instalment BEST32.;
format tot_monthly_instalment BEST32.;
informat tot_monthly_instalment_orig $6.;
label monthly_inst_to_income='monthly_inst_to_income';
informat monthly_inst_to_income BEST32.;
format monthly_inst_to_income BEST32.;
informat monthly_inst_to_income_orig $6.;
label tot_credit_searches_l1m='tot_credit_searches_l1m';
informat tot_credit_searches_l1m BEST32.;
format tot_credit_searches_l1m BEST32.;
informat tot_credit_searches_l1m_orig $2.;
label tot_credit_searches_l3m='tot_credit_searches_l3m';
informat tot_credit_searches_l3m BEST32.;
format tot_credit_searches_l3m BEST32.;
informat tot_credit_searches_l3m_orig $2.;
label tot_credit_searches_l6m='tot_credit_searches_l6m';
informat tot_credit_searches_l6m BEST32.;
format tot_credit_searches_l6m BEST32.;
informat tot_credit_searches_l6m_orig $2.;
label tot_credit_searches_l12m='tot_credit_searches_l12m';
informat tot_credit_searches_l12m BEST32.;
format tot_credit_searches_l12m BEST32.;
informat tot_credit_searches_l12m_orig $3.;
label tot_credit_searches_l24m='tot_credit_searches_l24m';
informat tot_credit_searches_l24m BEST32.;
format tot_credit_searches_l24m BEST32.;
informat tot_credit_searches_l24m_orig $3.;
label worst_status_flg='worst_status_flg';
informat worst_status_flg BEST32.;
format worst_status_flg BEST32.;
informat worst_status_flg_orig $1.;
label tot_declines_l1m='tot_declines_l1m';
informat tot_declines_l1m BEST32.;
format tot_declines_l1m BEST32.;
informat tot_declines_l1m_orig $2.;
label tot_declines_l3m='tot_declines_l3m';
informat tot_declines_l3m BEST32.;
format tot_declines_l3m BEST32.;
informat tot_declines_l3m_orig $2.;
label tot_declines_l6m='tot_declines_l6m';
informat tot_declines_l6m BEST32.;
format tot_declines_l6m BEST32.;
informat tot_declines_l6m_orig $2.;
label tot_declines_l12m='tot_declines_l12m';
informat tot_declines_l12m BEST32.;
format tot_declines_l12m BEST32.;
informat tot_declines_l12m_orig $3.;
label tot_declines_l24m='tot_declines_l24m';
informat tot_declines_l24m BEST32.;
format tot_declines_l24m BEST32.;
informat tot_declines_l24m_orig $3.;
label active_loans_in_arrears='active_loans_in_arrears';
informat active_loans_in_arrears BEST32.;
format active_loans_in_arrears BEST32.;
informat active_loans_in_arrears_orig $2.;
label tot_loans_in_arrears='tot_loans_in_arrears';
informat tot_loans_in_arrears BEST32.;
format tot_loans_in_arrears BEST32.;
informat tot_loans_in_arrears_orig $2.;
label worst_arrears_l1m='worst_arrears_l1m';
informat worst_arrears_l1m BEST32.;
format worst_arrears_l1m BEST32.;
informat worst_arrears_l1m_orig $3.;
label worst_arrears_l3m='worst_arrears_l3m';
informat worst_arrears_l3m BEST32.;
format worst_arrears_l3m BEST32.;
informat worst_arrears_l3m_orig $3.;
label worst_arrears_l6m='worst_arrears_l6m';
informat worst_arrears_l6m BEST32.;
format worst_arrears_l6m BEST32.;
informat worst_arrears_l6m_orig $3.;
label worst_arrears_l12m='worst_arrears_l12m';
informat worst_arrears_l12m BEST32.;
format worst_arrears_l12m BEST32.;
informat worst_arrears_l12m_orig $3.;
label worst_arrears_l24m='worst_arrears_l24m';
informat worst_arrears_l24m BEST32.;
format worst_arrears_l24m BEST32.;
informat worst_arrears_l24m_orig $3.;
label default='default';
informat default BEST32.;
format default BEST32.;
informat default_orig $1.;
hasErrors = 0;
obsNum = _n_;
colIndex = 0;
input age_orig $
regular_income_flg_orig $
tot_available_limit_orig $
requested_amt_l1m_orig $
requested_amt_l3m_orig $
requested_amt_l6m_orig $
requested_amt_l12m_orig $
requested_amt_l24m_orig $
requested_amt_to_income_orig $
avg_credit_cost_orig $
avg_remaining_loan_term_orig $
tot_balance_due_orig $
tot_monthly_instalment_orig $
monthly_inst_to_income_orig $
tot_credit_searches_l1m_orig $
tot_credit_searches_l3m_orig $
tot_credit_searches_l6m_orig $
tot_credit_searches_l12m_orig $
tot_credit_searches_l24m_orig $
worst_status_flg_orig $
tot_declines_l1m_orig $
tot_declines_l3m_orig $
tot_declines_l6m_orig $
tot_declines_l12m_orig $
tot_declines_l24m_orig $
active_loans_in_arrears_orig $
tot_loans_in_arrears_orig $
worst_arrears_l1m_orig $
worst_arrears_l3m_orig $
worst_arrears_l6m_orig $
worst_arrears_l12m_orig $
worst_arrears_l24m_orig $
default_orig $;
age = input(strip(age_orig), BEST32.);
regular_income_flg = input(strip(regular_income_flg_orig), BEST32.);
tot_available_limit = input(strip(tot_available_limit_orig), BEST32.);
requested_amt_l1m = input(strip(requested_amt_l1m_orig), BEST32.);
requested_amt_l3m = input(strip(requested_amt_l3m_orig), BEST32.);
requested_amt_l6m = input(strip(requested_amt_l6m_orig), BEST32.);
requested_amt_l12m = input(strip(requested_amt_l12m_orig), BEST32.);
requested_amt_l24m = input(strip(requested_amt_l24m_orig), BEST32.);
requested_amt_to_income = input(strip(requested_amt_to_income_orig), BEST32.);
avg_credit_cost = input(strip(avg_credit_cost_orig), BEST32.);
avg_remaining_loan_term = input(strip(avg_remaining_loan_term_orig), BEST32.);
tot_balance_due = input(strip(tot_balance_due_orig), BEST32.);
tot_monthly_instalment = input(strip(tot_monthly_instalment_orig), BEST32.);
monthly_inst_to_income = input(strip(monthly_inst_to_income_orig), BEST32.);
tot_credit_searches_l1m = input(strip(tot_credit_searches_l1m_orig), BEST32.);
tot_credit_searches_l3m = input(strip(tot_credit_searches_l3m_orig), BEST32.);
tot_credit_searches_l6m = input(strip(tot_credit_searches_l6m_orig), BEST32.);
tot_credit_searches_l12m = input(strip(tot_credit_searches_l12m_orig), BEST32.);
tot_credit_searches_l24m = input(strip(tot_credit_searches_l24m_orig), BEST32.);
worst_status_flg = input(strip(worst_status_flg_orig), BEST32.);
tot_declines_l1m = input(strip(tot_declines_l1m_orig), BEST32.);
tot_declines_l3m = input(strip(tot_declines_l3m_orig), BEST32.);
tot_declines_l6m = input(strip(tot_declines_l6m_orig), BEST32.);
tot_declines_l12m = input(strip(tot_declines_l12m_orig), BEST32.);
tot_declines_l24m = input(strip(tot_declines_l24m_orig), BEST32.);
active_loans_in_arrears = input(strip(active_loans_in_arrears_orig), BEST32.);
tot_loans_in_arrears = input(strip(tot_loans_in_arrears_orig), BEST32.);
worst_arrears_l1m = input(strip(worst_arrears_l1m_orig), BEST32.);
worst_arrears_l3m = input(strip(worst_arrears_l3m_orig), BEST32.);
worst_arrears_l6m = input(strip(worst_arrears_l6m_orig), BEST32.);
worst_arrears_l12m = input(strip(worst_arrears_l12m_orig), BEST32.);
worst_arrears_l24m = input(strip(worst_arrears_l24m_orig), BEST32.);
default = input(strip(default_orig), BEST32.);
output temp_lib.DS9;
run;

options fmterr &fmterrDefault;

