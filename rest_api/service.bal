import ballerina/http;
import ballerina/sql;

service /api on new http:Listener(3000) {
    resource function get review_due() returns Reviews[]|error {
        stream<Reviews, sql:Error?> reviewsStream = db->query(`
            SELECT *
            FROM Reviews r
            WHERE r.review_due_date <= CURRENT_DATE
        `);
        return from Reviews reviews in reviewsStream
            select reviews;
    }
}
