#Determine the average number of services used per guest during their stay.

use castiglione_hotel;
SELECT 
    round(avg(services_used),0) as avg_services_used
FROM
    (SELECT 
        Guest_ID, COUNT(DISTINCT Service_ID) AS services_used
    FROM
        guest_service
    GROUP BY Guest_ID) as guest_services_count
;

/*	Recommendations and insights
1. Each guest uses on average 1 service during their stay.
2. The hotel can identify the need of cross-selling value-added services and do research on compatibility.
3. The hotel gets to understand customer prefereces using these insights
4. The insights inform on bundling services effectively and selling them as service packages.
	This done with caution to mitigate pressuring the customers would see the average number of services used increase
5. The hotel should collect customer insights to identify gaps for improvement.
6. The insights inform investments in technology to streamline service delivery to customers e.g., digital concierge services
7. The insights inform on Training staff on delivering a variety of Services skillfuly to boost customer satisfaction and
	skill to cross-sell a service effectively.
*/