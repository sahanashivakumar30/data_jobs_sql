/*
TASK: What are the top 10 skills based on job requirements for Data Analyst roles for Indian companies?
        - Gathering only Data Analyst roles among other Data related jobs.
        - Considering job locations that are either remote (Anywhere) or based in India.
        - Counting the occurrences of each skill required for Data Analyst roles.
        - Limiting the results to the top 10 most frequently mentioned skills.
    */




SELECT 
    DISTINCT(skills) AS skill_name,
	COUNT(skills_job_dim.skill_id) AS skill_count
FROM 
    skills_job_dim
LEFT JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
LEFT JOIN job_postings_fact ON skills_job_dim.job_id=job_postings_fact.job_id
WHERE 
    job_title_short LIKE '%Data Analyst' AND 
    (job_location LIKE 'Anywhere' OR job_location LIKE '%India')
GROUP BY 
    skill_name
ORDER BY 
    skill_count DESC
LIMIT 10;