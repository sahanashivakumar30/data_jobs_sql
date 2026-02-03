/*
TASK: What are the top 10 paying jobs/companies in India for Data Analysis/Senior Data Analysis, onsite or remote?
     - Gathering only Data Analyst roles among other Data related jobs.
     - Identifing companies based only in India.
     - Identifing the top 10 paying jobs based on salary, onsite or remote.
*/


SELECT  
	job_postings_fact.job_title_short,
	job_postings_fact.salary_year_avg,
	job_postings_fact.job_country,
	job_postings_fact.job_location,
	company_dim.name AS company_name
FROM 
	job_postings_fact
LEFT JOIN company_dim 
ON job_postings_fact.company_id=company_dim.company_id
WHERE 
	(job_postings_fact.job_location LIKE'Anywhere' OR 
    job_postings_fact.job_location LIKE '%India') AND
	job_postings_fact.job_country = 'India' AND
    job_postings_fact.job_title_short LIKE '%Data Analyst%' AND 
	job_postings_fact.salary_year_avg  IS NOT NULL
ORDER BY 
	job_postings_fact.salary_year_avg DESC
LIMIT 10;