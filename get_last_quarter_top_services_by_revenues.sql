use castiglione_hotel;
/*
Identify the top 5 most profitable services offered by the hotel in the last quarter
*/
SELECT 
    gs.Service_ID,
    s.Service_Name,
    SUM(s.Price) AS total_revenues
FROM
    guest_service gs
        JOIN
    services s ON gs.Service_ID = s.Service_ID
WHERE
    gs.Date BETWEEN DATE_SUB('2023-12-08', INTERVAL 3 MONTH) AND '2023-12-08'
GROUP BY gs.Service_ID
ORDER BY total_revenues DESC
LIMIT 5;

/*	Insights & Recommendations
1. Meetings have brought in the most reenues in the last quarter
2. The business can determine if the last quarter period (December, November, October)has a trend of having many  meetings. This can help inform 
	enhancemet of meeting rooms and services during this period to retain the customers and boost satisfaction.
3.	In months prior to the quarter, the hotel can advertise their hotel meeting services to increase reach ad boost revenues.
4. The business can strategize on how to upsell some services that sell a lot during the period too, to boost
	revenues e.g., Sauna, Swimming pool, Concierge.
5. All the services here can be allocated resources to boost the customer satisfaction
    */