SELECT * FROM EMP ;
select * from DEPT;

1-SELECT a.table_name child_table, a.column_name child_column, a.constraint_name, 
b.table_name parent_table, b.column_name parent_column
FROM all_cons_columns a
JOIN all_constraints c ON a.owner = c.owner AND a.constraint_name = c.constraint_name
join all_cons_columns b on c.owner = b.owner and c.r_constraint_name = b.constraint_name
WHERE c.constraint_type = 'R'
AND a.table_name = 'EMP';

2-SELECT e.JOB, COUNT(*) AS CountOf
FROM EMP e group by e.JOB
HAVING COUNT(*)>1; 

3-select e.ename,e.empno,d.deptno from EMP e JOIN DEPT d on e.deptno=d.deptno where e.job='MANAGER'AND e.deptno!='30';

4-select * from (select * from emp order by sal desc)where ROWNUM = '1'
5-select empno,max(sal) from EMP where sal<1000 where JOB in ('CLERK','SALESMAN') order by MGR,JOB asc
6-select * from EMP e JOIN DEPT d on e.DEPTNO=d.DEPTNO where e.sal=(select max(e.sal) from emp)

7-select  * from EMP where rownum <11 order by(sal) FETCH FIRST 3 ROWS ONLY order by(sal)

8-select  min(sal) from (select * from emp order by(sal)desc ) where rownum<3 ;

9-select  * from (select e.* ,row_number() over (order by sal desc)as ROW_NUM  from emp e) where ROW_NUM=2
