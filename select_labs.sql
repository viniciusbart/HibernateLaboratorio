select lab.`nome`,
	  soft.`nome`
from 	laboratorio as lab,
		software as soft,
		lab_soft as ls
where ls.`id_laboratorio`=lab.`id` and
	  ls.`id_software`=soft.`id`
order by lab.`id`; 
