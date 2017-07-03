SELECT t2.fips, t2.state,
  SUM(if(t3.airportcode is not null, t3.count, 0)) 2000,
  SUM(if(t4.airportcode is not null, t4.count, 0)) 2001,
  SUM(if(t5.airportcode is not null, t5.count, 0)) 2002,
  SUM(if(t6.airportcode is not null, t6.count, 0)) 2003,
  SUM(if(t7.airportcode is not null, t7.count, 0)) 2004,
  SUM(if(t8.airportcode is not null, t8.count, 0)) 2005,
  SUM(if(t9.airportcode is not null, t9.count, 0)) 2006,
  SUM(if(t10.airportcode is not null,t10.count, 0)) 2007,
  SUM(if(t11.airportcode is not null,t11.count, 0)) 2008
FROM airport_state_map t2
left join flightscount2000 t3 on t2.airportcode = t3.airportcode
left join flightscount2001 t4 on t2.airportcode = t4.airportcode
left join flightscount2002 t5 on t2.airportcode = t5.airportcode
left join flightscount2003 t6 on t2.airportcode = t6.airportcode
left join flightscount2004 t7 on t2.airportcode = t7.airportcode
left join flightscount2005 t8 on t2.airportcode = t8.airportcode
left join flightscount2006 t9 on t2.airportcode = t9.airportcode
left join flightscount2007 t10 on t2.airportcode = t10.airportcode
left join flightscount2008 t11 on t2.airportcode = t11.airportcode
group by t2.fips, t2.state