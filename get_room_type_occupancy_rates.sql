
#Find the occupancy rate of each room type in the hotel for the current year.
use castiglione_hotel;
SELECT 
    r.Room_Type,
    (SUM(DATEDIFF(b.Check_out, b.Check_in)) * - 1) AS Total_Nights_Occupied,
    COUNT(*) AS Total_Bookings,
    YEAR(b.Check_in) AS Year,
    ABS(SUM(DATEDIFF(b.Check_out, b.Check_in)) / (365 * COUNT(DISTINCT b.Room_Number)) * 100) AS Occupancy_Rate
FROM
    bookings b
        JOIN
    rooms r ON b.Room_Number = r.Room_Number
WHERE
    YEAR(b.Check_in) = '2024
    '
GROUP BY r.Room_Type , Year
ORDER BY Occupancy_Rate DESC;

/*	Recommendations & Insights
1.	Suites have had the highest occupancy rate at 56% followed by Single at 14%
2. The insights reflect demand thus the hotel could allocate resources and investments to enhancing the Suite experience
3. The hotel could collect insights from Suite customers and identify gaps for improvemet and cross-selling opportunities.
4.	The insights also inform marketing campaigns as Suites can be promoted to reach new customers.
5. This information can be compared to that of a competitors' as a benchmarking measure. Opportunities can then be identified
	to enhance customer experience and satisfaction.
6. Inventory set for Singls and doubles can be reduced  to allow room for capitalizing on Suites.
	This will optimize inventory management and allow room for maximum use of revenues.
7. The low performing Single and doubles will drag the total average occupancy. So the hotel can strategize on promoting
	these types using various measures to increase occupancy rates.
*/
