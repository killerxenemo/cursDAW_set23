use horaris;
select hc.inici,hc.final,m.nomcomplet from horari h,materies m,horaricentre hc where h.id_materia=m.id_materia and 
h.hora=hc.id_horaricentre and dia=1 and id_grup=2 order by hc.inici;