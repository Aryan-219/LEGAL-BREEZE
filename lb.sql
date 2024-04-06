create database lbdb;

use lbdb;

################# qualifications-start ##############
create table qualifications
(
    qualification_id int auto_increment primary key,
    degree char(10) not null
);
################# qualifications-end ##############



################# user_types-start ##############
create table user_types
(
    user_type_id int auto_increment primary key,
    name char(10) not null
);

insert into user_types (name) values ('Seeker'),('Provider');
################# user_types-end ##############


################# categories-start ##############
create table categories
(
    category_id int auto_increment primary key,
    name char(25) not null
);
#################  categories-end ##############


#################  status-start ##############
create table status
(
    status_id int auto_increment primary key,
    name char(15) not null
);
insert into status (name) values ('Active'),('Inactive'),('Open'),('Closed'),('Blocked');
#################  status-end ##############


#################  countries-start ##############
create table countries
(
    country_id int auto_increment primary key,
    name varchar(200) not null,
    isd_code char(2) not null
);

insert into countries (name,isd_code)
VALUES
('Afghanistan','AF'),
('Åland','AX'),
('Albania','AL'),
('Algeria','DZ'),
('American Samoa','AS'),
('Andorra','AD'),
('Angola','AO'),
('Anguilla','AI'),
('Antarctica','AQ'),
('Antigua and Barbuda','AG'),
('Argentina','AR'),
('Armenia','AM'),
('Aruba','AW'),
('Australia','AU'),
('Austria','AT'),
('Azerbaijan','AZ'),
('Bahamas','BS'),
('Bahrain','BH'),
('Bangladesh','BD'),
('Barbados','BB'),
('Belarus','BY'),
('Belgium','BE'),
('Belize','BZ'),
('Benin','BJ'),
('Bermuda','BM'),
('Bhutan','BT'),
('Bolivia','BO'),
('Bonaire','BQ'),
('Bosnia and Herzegovina','BA'),
('Botswana','BW'),
('Bouvet Island','BV'),
('Brazil','BR'),
('British Indian Ocean Territory','IO'),
('British Virgin Islands','VG'),
('Brunei','BN'),
('Bulgaria','BG'),
('Burkina Faso','BF'),
('Burundi','BI'),
('Cambodia','KH'),
('Cameroon','CM'),
('Canada','CA'),
('Cape Verde','CV'),
('Cayman Islands','KY'),
('Central African Republic','CF'),
('Chad','TD'),
('Chile','CL'),
('China','CN'),
('Christmas Island','CX'),
('Cocos [Keeling] Islands','CC'),
('Colombia','CO'),
('Comoros','KM'),
('Cook Islands','CK'),
('Costa Rica','CR'),
('Croatia','HR'),
('Cuba','CU'),
('Curacao','CW'),
('Cyprus','CY'),
('Czech Republic','CZ'),
('Democratic Republic of the Congo','CD'),
('Denmark','DK'),
('Djibouti','DJ'),
('Dominica','DM'),
('Dominican Republic','DO'),
('East Timor','TL'),
('Ecuador','EC'),
('Egypt','EG'),
('El Salvador','SV'),
('Equatorial Guinea','GQ'),
('Eritrea','ER'),
('Estonia','EE'),
('Ethiopia','ET'),
('Falkland Islands','FK'),
('Faroe Islands','FO'),
('Fiji','FJ'),
('Finland','FI'),
('France','FR'),
('French Guiana','GF'),
('French Polynesia','PF'),
('French Southern Territories','TF'),
('Gabon','GA'),
('Gambia','GM'),
('Georgia','GE'),
('Germany','DE'),
('Ghana','GH'),
('Gibraltar','GI'),
('Greece','GR'),
('Greenland','GL'),
('Grenada','GD'),
('Guadeloupe','GP'),
('Guam','GU'),
('Guatemala','GT'),
('Guernsey','GG'),
('Guinea','GN'),
('Guinea-Bissau','GW'),
('Guyana','GY'),
('Haiti','HT'),
('Heard Island and McDonald Islands','HM'),
('Honduras','HN'),
('Hong Kong','HK'),
('Hungary','HU'),
('Iceland','IS'),
('India','IN'),
('Indonesia','ID'),
('Iran','IR'),
('Iraq','IQ'),
('Ireland','IE'),
('Isle of Man','IM'),
('Israel','IL'),
('Italy','IT'),
('Ivory Coast','CI'),
('Jamaica','JM'),
('Japan','JP'),
('Jersey','JE'),
('Jordan','JO'),
('Kazakhstan','KZ'),
('Kenya','KE'),
('Kiribati','KI'),
('Kosovo','XK'),
('Kuwait','KW'),
('Kyrgyzstan','KG'),
('Laos','LA'),
('Latvia','LV'),
('Lebanon','LB'),
('Lesotho','LS'),
('Liberia','LR'),
('Libya','LY'),
('Liechtenstein','LI'),
('Lithuania','LT'),
('Luxembourg','LU'),
('Macao','MO'),
('Macedonia','MK'),
('Madagascar','MG'),
('Malawi','MW'),
('Malaysia','MY'),
('Maldives','MV'),
('Mali','ML'),
('Malta','MT'),
('Marshall Islands','MH'),
('Martinique','MQ'),
('Mauritania','MR'),
('Mauritius','MU'),
('Mayotte','YT'),
('Mexico','MX'),
('Micronesia','FM'),
('Moldova','MD'),
('Monaco','MC'),
('Mongolia','MN'),
('Montenegro','ME'),
('Montserrat','MS'),
('Morocco','MA'),
('Mozambique','MZ'),
('Myanmar [Burma]','MM'),
('Namibia','NA'),
('Nauru','NR'),
('Nepal','NP'),
('Netherlands','NL'),
('New Caledonia','NC'),
('New Zealand','NZ'),
('Nicaragua','NI'),
('Niger','NE'),
('Nigeria','NG'),
('Niue','NU'),
('Norfolk Island','NF'),
('North Korea','KP'),
('Northern Mariana Islands','MP'),
('Norway','NO'),
('Oman','OM'),
('Pakistan','PK'),
('Palau','PW'),
('Palestine','PS'),
('Panama','PA'),
('Papua New Guinea','PG'),
('Paraguay','PY'),
('Peru','PE'),
('Philippines','PH'),
('Pitcairn Islands','PN'),
('Poland','PL'),
('Portugal','PT'),
('Puerto Rico','PR'),
('Qatar','QA'),
('Republic of the Congo','CG'),
('Réunion','RE'),
('Romania','RO'),
('Russia','RU'),
('Rwanda','RW'),
('Saint Barthélemy','BL'),
('Saint Helena','SH'),
('Saint Kitts and Nevis','KN'),
('Saint Lucia','LC'),
('Saint Martin','MF'),
('Saint Pierre and Miquelon','PM'),
('Saint Vincent and the Grenadines','VC'),
('Samoa','WS'),
('San Marino','SM'),
('São Tomé and Príncipe','ST'),
('Saudi Arabia','SA'),
('Senegal','SN'),
('Serbia','RS'),
('Seychelles','SC'),
('Sierra Leone','SL'),
('Singapore','SG'),
('Sint Maarten','SX'),
('Slovakia','SK'),
('Slovenia','SI'),
('Solomon Islands','SB'),
('Somalia','SO'),
('South Africa','ZA'),
('South Georgia and the South Sandwich Islands','GS'),
('South Korea','KR'),
('South Sudan','SS'),
('Spain','ES'),
('Sri Lanka','LK'),
('Sudan','SD'),
('Suriname','SR'),
('Svalbard and Jan Mayen','SJ'),
('Swaziland','SZ'),
('Sweden','SE'),
('Switzerland','CH'),
('Syria','SY'),
('Taiwan','TW'),
('Tajikistan','TJ'),
('Tanzania','TZ'),
('Thailand','TH'),
('Togo','TG'),
('Tokelau','TK'),
('Tonga','TO'),
('Trinidad and Tobago','TT'),
('Tunisia','TN'),
('Turkey','TR'),
('Turkmenistan','TM'),
('Turks and Caicos Islands','TC'),
('Tuvalu','TV'),
('U.S. Minor Outlying Islands','UM'),
('U.S. Virgin Islands','VI'),
('Uganda','UG'),
('Ukraine','UA'),
('United Arab Emirates','AE'),
('United Kingdom','GB'),
('United States','US'),
('Uruguay','UY'),
('Uzbekistan','UZ'),
('Vanuatu','VU'),
('Vatican City','VA'),
('Venezuela','VE'),
('Vietnam','VN'),
('Wallis and Futuna','WF'),
('Western Sahara','EH'),
('Yemen','YE'),
('Zambia','ZM'),
('Zimbabwe','ZW');
#################  countries-end ##############


#################  states-start ##############
create table states
(
    state_id int auto_increment primary key,
    name char(50) not null,
    country_id int not null,
    constraint fk_states_countries foreign key (country_id) references countries (country_id)
);


INSERT INTO states (state_id, name, country_id) VALUES
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
#################  states-end ##############


#################  genders-start ##############
create table genders
(
    gender_id int auto_increment primary key,
    name char(10) not null
);
#################  genders-end ##############


#################  badges-start ##############
create table badges
(
    badge_id int auto_increment primary key,
    name char(15) not null
);
insert into badges (name) values ('Bronze'),('Silver'),('Gold'),('Platinum');
#################  badges-end ##############


#################  users-start ##############
create table users
(
    user_id int auto_increment primary key,
    name char(35) not null,
    email char(255) not null unique,
    password char(255) not null ,
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
    constraint success_ratio_check check (success_ratio>=0 AND  success_ratio<=100) ,
    constraint fk_users_states foreign key (state_id) references states (state_id),
    constraint fk_users_genders foreign key (gender_id) references genders (gender_id),
    constraint fk_users_users_types foreign key (user_type_id) references user_types (user_type_id),
    constraint fk_users_categories foreign key (category_id) references categories (category_id),
    constraint fk_users_badges foreign key (badge_id) references badges (badge_id),
    constraint fk_users_status foreign key (status_id) references status (status_id)
);
#################  users-end ##############


#################  user_qualifications-start ##############
create table user_qualifications
(
    user_qualification_id int auto_increment primary key,
    user_id int not null,
    qualification_id int not null,
    constraint fk_user_qualifications_users foreign key (user_id) references users (user_id),
    constraint fk_user_qualifications_qualifications foreign key (qualification_id) references qualifications (qualification_id)
);
#################  users_qualifications-end ##############


#################  bids-start ##############
create table bids
(
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
create table bid_applicants
(
    bid_applicant_id int auto_increment primary key,
    bid_id int not null,
    applicant_id int not null,
    constraint fk_bid_applicants_bids foreign key (bid_id) references bids (bid_id),
    constraint fk_bid_applicants_users foreign key (applicant_id) references users (user_id)
);
#################  bid_applicants-end ##############


#################  cases-start ##############
create table cases
(
    case_id int auto_increment primary key,
    issue char(200) not null,
    description varchar(1000) not null,
    client_id int not null,
    lawyer_id int null,
    start_date date null,
    end_date date null,
    status_id int not null default 3,
    constraint fk_cases_clients foreign key (client_id) references users (user_id),
    constraint fk_cases_lawyers foreign key (lawyer_id) references users (user_id)
);
#################  cases-end ##############