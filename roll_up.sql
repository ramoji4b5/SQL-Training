SELECT
  COALESCE(state, '') state,
  COALESCE(job, '') job,
  SUM(salary) total_salary
FROM
  salary_reports
GROUP BY
  ROLLUP (state, job)
ORDER BY
  state DESC,
  job DESC;