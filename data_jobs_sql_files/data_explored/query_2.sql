/*
TASK: What are the top 10 paying companies for only remote Data Analyst jobs globally?
     - Gather only Data Analyst roles among other Data related jobs.
     - Identifing Data Analyst roles that are remote (Anywhere).
     - Limit the results to the top 10 paying jobs based on salary_year_avg.
     - Include company name, job title, salary, country, and location in the results.
*/
SELECT company_dim.name AS company_name,
	job_postings_fact.job_title_short,
	job_postings_fact.salary_year_avg,
	job_postings_fact.job_country,
	job_postings_fact.job_location
FROM 
    job_postings_fact
LEFT JOIN company_dim 
ON job_postings_fact.company_id=company_dim.company_id
WHERE 
    job_postings_fact.job_location LIKE'Anywhere' AND
    job_postings_fact.job_title_short LIKE '%Data Analyst%' AND 
	job_postings_fact.salary_year_avg  IS NOT NULL
ORDER BY 
    job_postings_fact.salary_year_avg DESC
LIMIT 10;