create database lbdb;

use lbdb;

################# qualifications-start ##############
create table qualifications (
    qualification_id int auto_increment primary key,
    degree char(10) not null
);

################# qualifications-end ##############
################# user_types-start ##############
create table user_types (
    user_type_id int auto_increment primary key,
    name char(10) not null
);



################# user_types-end ##############
################# categories-start ##############
create table categories (
    category_id int auto_increment primary key,
    name char(25) not null
);

#################  categories-end ##############
#################  status-start ##############
create table status (
    status_id int auto_increment primary key,
    name char(15) not null
);



#################  status-end ##############
#################  countries-start ##############
create table countries (
    country_id int auto_increment primary key,
    name varchar(200) not null,
    isd_code char(2) not null
);


#################  countries-end ##############
#################  states-start ##############
create table states (
    state_id int auto_increment primary key,
    name char(50) not null,
    country_id int not null,
    constraint fk_states_countries foreign key (country_id) references countries (country_id)
);



#################  states-end ##############
#################  genders-start ##############
create table genders (
    gender_id int auto_increment primary key,
    name char(10) not null
);

#################  genders-end ##############
#################  badges-start ##############
create table badges (
    badge_id int auto_increment primary key,
    name char(15) not null
);


#################  badges-end ##############
#################  users-start ##############
create table users (
    user_id int auto_increment primary key,
    name char(35) not null,
    email char(255) not null unique,
    password char(255) not null,
    phone char(10) not null unique,
    address varchar(500) null,
    pin char(6) null,
    state_id int not null,
    gender_id int null,
    user_type_id int not null,
    category_id int null,
    experience int null,
    profile_pic char(255) null,
    badge_id int null default 1,
    joined_on datetime not null,
    cases_fought int null default 0,
    cases_won int null default 0,
    success_ratio int null,
    status_id int not null default 2,
    uid char(12) null,
    otp char(6) null,
    constraint success_ratio_check check (
        success_ratio >= 0
        AND success_ratio <= 100
    ),
    constraint fk_users_states foreign key (state_id) references states (state_id),
    constraint fk_users_genders foreign key (gender_id) references genders (gender_id),
    constraint fk_users_users_types foreign key (user_type_id) references user_types (user_type_id),
    constraint fk_users_categories foreign key (category_id) references categories (category_id),
    constraint fk_users_badges foreign key (badge_id) references badges (badge_id),
    constraint fk_users_status foreign key (status_id) references status (status_id)
);

#################  users-end ##############
#################  user_qualifications-start ##############
create table user_qualifications (
    user_qualification_id int auto_increment primary key,
    user_id int not null,
    qualification_id int not null,
    constraint fk_user_qualifications_users foreign key (user_id) references users (user_id),
    constraint fk_user_qualifications_qualifications foreign key (qualification_id) references qualifications (qualification_id)
);

#################  users_qualifications-end ##############
#################  bids-start ##############
create table bids (
    bid_id int auto_increment primary key,
    issue char(200) not null,
    description varchar(1000) not null,
    hearings int not null default 0,
    status_id int not null default 3,
    budget int not null,
    start_date date not null,
    deadline date null,
    no_of_applicants int not null default 0,
    user_id int not null,
    constraint fk_bids_status foreign key (status_id) references status (status_id),
    constraint fk_bids_users foreign key (user_id) references users (user_id)
);

#################  bids-end ##############

################# bid_applicants-start ##############
create table bid_applicants (
    bid_applicant_id int auto_increment primary key,
    bid_id int not null, 
    applicant_id int not null, 
    bid_amount int not null,
    constraint fk_bid_applicants_bids foreign key (bid_id) references bids (bid_id),
    constraint fk_bid_applicants_users foreign key (applicant_id) references users (user_id)
);

#################  bid_applicants-end ##############


#################  courts-start ##############
create table courts
(
    court_id int auto_increment primary key,
    name varchar(100) not null
);


#################  courts-end ##############

#################  cases-start ##############
create table cases (
    case_id int auto_increment primary key,
    issue char(200) not null,
    description varchar(1000) not null,
    budget int not null default 0,
    client_id int not null,
    lawyer_id int null,
    start_date date null,
    end_date date null,
    status_id int not null default 3,
    court_id int not null,
    constraint fk_cases_courts foreign key (court_id) references courts (court_id),
    constraint fk_cases_clients foreign key (client_id) references users (user_id),
    constraint fk_cases_lawyers foreign key (lawyer_id) references users (user_id)
);

#################  cases-end ##############

#################  profession-start ##############
create table profession (
    profession_id int auto_increment primary key,
    name char(20) not null,
    user_type_id int not null,
    constraint fk_profession_user_types foreign key (user_type_id) references user_types (user_type_id)
);



#################  profession-END ##############

#################  provider_types-start ##############
create table provider_types
(
    provider_type_id int auto_increment primary key,
    type_name varchar(40) not null,
    profession_id int not null,
    constraint fk_providerTypes_profession foreign key (profession_id) references profession (profession_id)
);



#################  provider_types-end ##############


#################  providers-start ##############
create table providers 
(
    provider_id int auto_increment primary key,
    user_id int not null,
    provider_type_id int not null,
    constraint fk_providers_users foreign key (user_id) references users (user_id),
    constraint fk_p_providers_types foreign key (provider_type_id) references provider_types (provider_type_id)
);
#################  providers-end ##############

#################  hired_bid_applicants-start ##############
create table hired_bid_applicants 
(
    hired_bid_applicant_id int auto_increment primary key,
    bid_id int not null,
    provider_id int not null,
    seeker_id int not null,
    status_id int not null default 7,
    constraint fk_hba_bids foreign key (bid_id) references bids (bid_id),
    constraint fk_hba_providers foreign key (provider_id) references providers (user_id),
    constraint fk_hba_status foreign key (status_id) references status (status_id),
    constraint fk_hba_seekers foreign key (seeker_id) references users (user_id)
);
#################  hired_bid_applicants-end ##############

-- insert queries 
-- enum tables start

insert into
    badges (name)
values
    ('Bronze'),
('Silver'),
('Gold'),
('Platinum');


insert into
    user_types (name)
values
    ('Seeker'),
('Provider');


insert into status 
(name)
values
('Active'),
('Inactive'),
('Open'),
('Closed'),
('Blocked'),
('Deleted'),
('Engaged'),
('Rejected');


insert into countries 
(name, isd_code)
VALUES
('Afghanistan', 'AF'),
('Åland', 'AX'),
('Albania', 'AL'),
('Algeria', 'DZ'),
('American Samoa', 'AS'),
('Andorra', 'AD'),
('Angola', 'AO'),
('Anguilla', 'AI'),
('Antarctica', 'AQ'),
('Antigua and Barbuda', 'AG'),
('Argentina', 'AR'),
('Armenia', 'AM'),
('Aruba', 'AW'),
('Australia', 'AU'),
('Austria', 'AT'),
('Azerbaijan', 'AZ'),
('Bahamas', 'BS'),
('Bahrain', 'BH'),
('Bangladesh', 'BD'),
('Barbados', 'BB'),
('Belarus', 'BY'),
('Belgium', 'BE'),
('Belize', 'BZ'),
('Benin', 'BJ'),
('Bermuda', 'BM'),
('Bhutan', 'BT'),
('Bolivia', 'BO'),
('Bonaire', 'BQ'),
('Bosnia and Herzegovina', 'BA'),
('Botswana', 'BW'),
('Bouvet Island', 'BV'),
('Brazil', 'BR'),
('British Indian Ocean Territory', 'IO'),
('British Virgin Islands', 'VG'),
('Brunei', 'BN'),
('Bulgaria', 'BG'),
('Burkina Faso', 'BF'),
('Burundi', 'BI'),
('Cambodia', 'KH'),
('Cameroon', 'CM'),
('Canada', 'CA'),
('Cape Verde', 'CV'),
('Cayman Islands', 'KY'),
('Central African Republic', 'CF'),
('Chad', 'TD'),
('Chile', 'CL'),
('China', 'CN'),
('Christmas Island', 'CX'),
('Cocos [Keeling] Islands', 'CC'),
('Colombia', 'CO'),
('Comoros', 'KM'),
('Cook Islands', 'CK'),
('Costa Rica', 'CR'),
('Croatia', 'HR'),
('Cuba', 'CU'),
('Curacao', 'CW'),
('Cyprus', 'CY'),
('Czech Republic', 'CZ'),
('Democratic Republic of the Congo', 'CD'),
('Denmark', 'DK'),
('Djibouti', 'DJ'),
('Dominica', 'DM'),
('Dominican Republic', 'DO'),
('East Timor', 'TL'),
('Ecuador', 'EC'),
('Egypt', 'EG'),
('El Salvador', 'SV'),
('Equatorial Guinea', 'GQ'),
('Eritrea', 'ER'),
('Estonia', 'EE'),
('Ethiopia', 'ET'),
('Falkland Islands', 'FK'),
('Faroe Islands', 'FO'),
('Fiji', 'FJ'),
('Finland', 'FI'),
('France', 'FR'),
('French Guiana', 'GF'),
('French Polynesia', 'PF'),
('French Southern Territories', 'TF'),
('Gabon', 'GA'),
('Gambia', 'GM'),
('Georgia', 'GE'),
('Germany', 'DE'),
('Ghana', 'GH'),
('Gibraltar', 'GI'),
('Greece', 'GR'),
('Greenland', 'GL'),
('Grenada', 'GD'),
('Guadeloupe', 'GP'),
('Guam', 'GU'),
('Guatemala', 'GT'),
('Guernsey', 'GG'),
('Guinea', 'GN'),
('Guinea-Bissau', 'GW'),
('Guyana', 'GY'),
('Haiti', 'HT'),
('Heard Island and McDonald Islands', 'HM'),
('Honduras', 'HN'),
('Hong Kong', 'HK'),
('Hungary', 'HU'),
('Iceland', 'IS'),
('India', 'IN'),
('Indonesia', 'ID'),
('Iran', 'IR'),
('Iraq', 'IQ'),
('Ireland', 'IE'),
('Isle of Man', 'IM'),
('Israel', 'IL'),
('Italy', 'IT'),
('Ivory Coast', 'CI'),
('Jamaica', 'JM'),
('Japan', 'JP'),
('Jersey', 'JE'),
('Jordan', 'JO'),
('Kazakhstan', 'KZ'),
('Kenya', 'KE'),
('Kiribati', 'KI'),
('Kosovo', 'XK'),
('Kuwait', 'KW'),
('Kyrgyzstan', 'KG'),
('Laos', 'LA'),
('Latvia', 'LV'),
('Lebanon', 'LB'),
('Lesotho', 'LS'),
('Liberia', 'LR'),
('Libya', 'LY'),
('Liechtenstein', 'LI'),
('Lithuania', 'LT'),
('Luxembourg', 'LU'),
('Macao', 'MO'),
('Macedonia', 'MK'),
('Madagascar', 'MG'),
('Malawi', 'MW'),
('Malaysia', 'MY'),
('Maldives', 'MV'),
('Mali', 'ML'),
('Malta', 'MT'),
('Marshall Islands', 'MH'),
('Martinique', 'MQ'),
('Mauritania', 'MR'),
('Mauritius', 'MU'),
('Mayotte', 'YT'),
('Mexico', 'MX'),
('Micronesia', 'FM'),
('Moldova', 'MD'),
('Monaco', 'MC'),
('Mongolia', 'MN'),
('Montenegro', 'ME'),
('Montserrat', 'MS'),
('Morocco', 'MA'),
('Mozambique', 'MZ'),
('Myanmar [Burma]', 'MM'),
('Namibia', 'NA'),
('Nauru', 'NR'),
('Nepal', 'NP'),
('Netherlands', 'NL'),
('New Caledonia', 'NC'),
('New Zealand', 'NZ'),
('Nicaragua', 'NI'),
('Niger', 'NE'),
('Nigeria', 'NG'),
('Niue', 'NU'),
('Norfolk Island', 'NF'),
('North Korea', 'KP'),
('Northern Mariana Islands', 'MP'),
('Norway', 'NO'),
('Oman', 'OM'),
('Pakistan', 'PK'),
('Palau', 'PW'),
('Palestine', 'PS'),
('Panama', 'PA'),
('Papua New Guinea', 'PG'),
('Paraguay', 'PY'),
('Peru', 'PE'),
('Philippines', 'PH'),
('Pitcairn Islands', 'PN'),
('Poland', 'PL'),
('Portugal', 'PT'),
('Puerto Rico', 'PR'),
('Qatar', 'QA'),
('Republic of the Congo', 'CG'),
('Réunion', 'RE'),
('Romania', 'RO'),
('Russia', 'RU'),
('Rwanda', 'RW'),
('Saint Barthélemy', 'BL'),
('Saint Helena', 'SH'),
('Saint Kitts and Nevis', 'KN'),
('Saint Lucia', 'LC'),
('Saint Martin', 'MF'),
('Saint Pierre and Miquelon', 'PM'),
('Saint Vincent and the Grenadines', 'VC'),
('Samoa', 'WS'),
('San Marino', 'SM'),
('São Tomé and Príncipe', 'ST'),
('Saudi Arabia', 'SA'),
('Senegal', 'SN'),
('Serbia', 'RS'),
('Seychelles', 'SC'),
('Sierra Leone', 'SL'),
('Singapore', 'SG'),
('Sint Maarten', 'SX'),
('Slovakia', 'SK'),
('Slovenia', 'SI'),
('Solomon Islands', 'SB'),
('Somalia', 'SO'),
('South Africa', 'ZA'),
('South Georgia and the South Sandwich Islands','GS'),
('South Korea', 'KR'),
('South Sudan', 'SS'),
('Spain', 'ES'),
('Sri Lanka', 'LK'),
('Sudan', 'SD'),
('Suriname', 'SR'),
('Svalbard and Jan Mayen', 'SJ'),
('Swaziland', 'SZ'),
('Sweden', 'SE'),
('Switzerland', 'CH'),
('Syria', 'SY'),
('Taiwan', 'TW'),
('Tajikistan', 'TJ'),
('Tanzania', 'TZ'),
('Thailand', 'TH'),
('Togo', 'TG'),
('Tokelau', 'TK'),
('Tonga', 'TO'),
('Trinidad and Tobago', 'TT'),
('Tunisia', 'TN'),
('Turkey', 'TR'),
('Turkmenistan', 'TM'),
('Turks and Caicos Islands', 'TC'),
('Tuvalu', 'TV'),
('U.S. Minor Outlying Islands', 'UM'),
('U.S. Virgin Islands', 'VI'),
('Uganda', 'UG'),
('Ukraine', 'UA'),
('United Arab Emirates', 'AE'),
('United Kingdom', 'GB'),
('United States', 'US'),
('Uruguay', 'UY'),
('Uzbekistan', 'UZ'),
('Vanuatu', 'VU'),
('Vatican City', 'VA'),
('Venezuela', 'VE'),
('Vietnam', 'VN'),
('Wallis and Futuna', 'WF'),
('Western Sahara', 'EH'),
('Yemen', 'YE'),
('Zambia', 'ZM'),
('Zimbabwe', 'ZW');


INSERT INTO states 
(state_id, name, country_id)
VALUES
(1, 'ANDHRA PRADESH', 103),
(2, 'ASSAM', 103),
(3, 'ARUNACHAL PRADESH', 103),
(4, 'BIHAR', 103),
(5, 'GUJRAT', 103),
(6, 'HARYANA', 103),
(7, 'HIMACHAL PRADESH', 103),
(8, 'JAMMU & KASHMIR', 103),
(9, 'KARNATAKA', 103),
(10, 'KERALA', 103),
(11, 'MADHYA PRADESH', 103),
(12, 'MAHARASHTRA', 103),
(13, 'MANIPUR', 103),
(14, 'MEGHALAYA', 103),
(15, 'MIZORAM', 103),
(16, 'NAGALAND', 103),
(17, 'ORISSA', 103),
(18, 'PUNJAB', 103),
(19, 'RAJASTHAN', 103),
(20, 'SIKKIM', 103),
(21, 'TAMIL NADU', 103),
(22, 'TRIPURA', 103),
(23, 'UTTAR PRADESH', 103),
(24, 'WEST BENGAL', 103),
(25, 'DELHI', 103),
(26, 'GOA', 103),
(27, 'PONDICHERY', 103),
(28, 'LAKSHDWEEP', 103),
(29, 'DAMAN & DIU', 103),
(30, 'DADRA & NAGAR', 103),
(31, 'CHANDIGARH', 103),
(32, 'ANDAMAN & NICOBAR', 103),
(33, 'UTTARANCHAL', 103),
(34, 'JHARKHAND', 103),
(35, 'CHATTISGARH', 103);


insert into courts (name) values ('District Court'),( 'High Court'),('Supreme Court'), ('Lok Adalat');


insert into profession 
(name, user_type_id)
values
('lawyers', 2),
('notaries', 2),
('document writers', 2);


insert into provider_types 
(type_name, profession_id)
values
('Intellectual_property_lawyers', 1),
('Immigration_lawyers', 1),
('Legal_services_lawyers', 1),
('Corporate_law_lawyers', 1),
('Civil_law_lawyers', 1),
('Criminal_law_lawyers', 1),
('Labor_lawyers', 1),
('Personal_injury_lawyers', 1),
('Public_interest_lawyers', 1),
('Constitutional_laws', 1),
('Corporate_lawyers', 1),
('Mediation_lawyers', 1),
('Taxation_lawyers', 1),
('Bankruptcy_lawyers', 1),
('Contracts_lawyers', 1),
('Family_law_lawyers', 1),
('Judiciary_lawyers', 1),
('Law_articles_lawyers', 1),
('Legal_Aid_lawyers', 1),
('Company_litigation_lawyers', 1),
('Consumer_protection_lawyers', 1),
('Cyber_crime_lawyers', 1),
('Divorce_cases_lawyers', 1),
('File_special_leave_petition_lawyers', 1),
('Traditional_Notary_Public',2),
('Civil_Law_Notary',2),
('Mobile_Notary',2),
('Electronic_Notary',2),
('Online_Notary',2),
('feature_writers',3),
('legal_correspondents_writers',3),
('web_writers',3),
('copywriters',3),
('bloggers_writers',3),
('corporate_writers',3),
('brief_writers',3);

-- enum tables end

-- dummy data start
insert into users 
(name, email, password, phone, state_id, user_type_id,joined_on,status_id,otp) 
values 
('Aryan as seeker', 'aryanagr219@gmail.com','aryan1234', '6265311230', 11, 1,'2024/09/07 15:18:39',1,''),
('Aryan as Doc Writer', 'aryan21902@gmail.com','aryan1234', '6265311231', 11, 2,'2024/09/07 15:18:39',1,''),
('Aryan as Lawyer', 'ironman210902@gmail.com','aryan1234', '6265311232', 11, 2,'2024/09/07 15:18:39',7,''),
('Aryan as second seeker', 'aaaryan8080@gmail.com','aryan1234', '6265311233', 11, 1,'2024/09/07 15:18:39',1,'');


insert into providers 
(user_id, provider_type_id) 
values 
(2,30),
(3,1);


insert into bids 
(issue,description,status_id,budget, start_date, deadline, no_of_applicants, user_id) values 
("issue 1", "this is description 1", 7 ,23456, '2024/09/11' , '2024/10/07',2,1),
("issue 2", "this is description 2", 7 ,23456, '2024/09/11' , '2024/10/07',2,1),
("issue 3", "this is description 3", 7 ,23456, '2024/09/11' , '2024/10/07',1,4),
("issue 4", "this is description 4", 7 ,23456, '2024/09/11' , '2024/10/07',2,4),
("issue 5", "this is description 5", 7 ,23456, '2024/09/11' , '2024/10/07',1,4),
("issue 6", "this is description 6", 3 ,23456, '2024/09/11' , '2024/10/07',2,4),
("issue 7", "this is description 7", 7 ,23456, '2024/09/11' , '2024/10/07',2,1),
("issue 8", "this is description 8", 3 ,23456, '2024/09/11' , '2024/10/07',0,1),
("issue 9", "this is description 9", 7 ,23456, '2024/09/11' , '2024/10/07',2,1);


insert into bid_applicants 
(bid_id,applicant_id,bid_amount) 
values 
(6,3,938),
(6,2,5683);


insert into hired_bid_applicants 
(bid_id,provider_id, seeker_id, status_id)
values
(2,3,1,7),
(4,3,4,7),
(5,2,4,7),
(3,3,4,7),
(1,2,1,7),
(7,3,1,7);


insert into cases 
(issue, description, budget, client_id, lawyer_id, start_date, end_date, status_id, court_id)
VALUES
("case 1","this is description 1",1235554,1,3,'2024/09/11','2024/10/07',1,2),
("case 2","this is description 2",12345,1,3,'2024/09/11','2024/10/07',8,4),
("case 3","this is description 3",12346,1,3,'2024/09/11','2024/10/07',1,4),
("case 4","this is description 4",123,1,3,'2024/09/11','2024/10/07',1,2),
("case 5","this is description 5",123456,1,3,'2024/09/11','2024/10/07',1,4);


-- dummy data end