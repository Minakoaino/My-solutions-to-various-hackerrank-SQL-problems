--Problem Statement

/* Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, 
total number of managers, and total number of employees. Order your output by ascending company_code.
Table alias
Company -> a
Lead_Manager -> b
Senior_Manager -> c
Manager -> d
Employee -> e
*/

select a.company_code, a.founder,
count(distinct b.lead_manager_code),
count(distinct c.senior_manager_code),
count(distinct d.manager_code),
count(distinct e.employee_code)
from company a, Lead_Manager b, Senior_Manager c, Manager d, Employee e 

where a.company_code = b.company_code AND 
      c.lead_manager_code = b.lead_manager_code AND
      d.senior_manager_code = c.senior_manager_code AND
      e.manager_code = d.manager_code


group by a.company_code, a.founder
order by a.company_code asc