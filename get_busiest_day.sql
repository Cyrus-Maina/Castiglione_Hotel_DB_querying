#Identify the busiest day of the week in terms of check-ins.

use castiglione_hotel;
SELECT 
    DAYNAME(Check_in), COUNT(Check_in) AS check_in_count
FROM
    bookings
GROUP BY DAYNAME(Check_in)
ORDER BY check_in_count DESC
;

/*	Recommendations and Insights
1.	Fridays are the busiest days with 20 check-insert
2.	These insights will inform shift planning as much laborforce would be allocated to Friday and Tuesday to maintain efficiency.Thursdays and Mondays
	can be understaffed to allow them to work on busier days.
3.	The hotel can intensify marketing campaigns for Friday & Tuesday check-ins to capitalize on the demand.
4.	From the insights, Enough resources can be allocated for the busy days to maintain efficiency and customer satisfactione.g., inventory.
5.	The Hotel can strategize on differentiating their services by tailoring services to these results e.g., special welcome messages
6. The  insights inform price setting strategies to match demand
