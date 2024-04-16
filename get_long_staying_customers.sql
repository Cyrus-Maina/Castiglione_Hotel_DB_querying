/*List the guests who have stayed for more than 7 days in the past year*/
SELECT 
    b.guest_id, g.first_name, g.last_name
FROM
    bookings b
        JOIN
    guests g ON b.guest_id = g.guest_id

where
 DATEDIFF(b.Check_out, b.Check_in) > 7
    AND b.Check_out BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND CURDATE();
    
/*Recommendations and insights
1. We retrieved 41 guests who have stayed more than 7 days in the last 1 year.
2. The insights would help target these customers for personalized services to enhance retention and maintain
	a stable source of revenues.
3. These customers provide the most revenues thus important to enhance their stay experience to stay longer and give referrals.
4. In their long stay they probably use several amenities thus their experience insights would help inform policies.
*/