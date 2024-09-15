import ballerina/time;

type Programmes record {|
    string programme_code;
    string programme_name;
    string NQF_level;
    string faculty;
    string department;
    time:Date registration_date;
|};

type Courses record {|
    string course_code;
    string course_name;
    string NQF_level;
    string programme_code;
|};

type Reviews record {|
    string programme_code;
    time:Date review_due_date;
|};
