select deptno, dname
from dept100;
SELECT DISTINCT e.mgr, m.ename
FROM emp100 e, emp100 m
WHERE e.mgr = m.empno;
SELECT DISTINCT job
FROM emp100;