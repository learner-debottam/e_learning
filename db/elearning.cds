namespace app.elearning;
using { 
    Language, 
    Currency, 
    managed} 
from '@sap/cds/common';

type String50 : String(50);

entity Categories {
    key id : UUID;
        category_name : localized String50 @title : '{i18n>category_name}';
        category_description : localized String(200) @title : '{i18n>category_description}';
        Courses: Association to many Courses on Courses.category = $self;
}
entity Courses : managed {
    key category : Association to Categories;
    key course_id : UUID;
        course_name : localized String(100) @title : '{i18n>course_name}';
        price: Decimal @title : '{i18n>price}';
        currency : Currency @title : '{i18n>currency}';
        language: Language;
}