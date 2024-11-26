Algoritmo CalculoSueldoEmpleado
    Definir nombre_empleado, direccion_empleado, puesto_empleado Como Caracter
    Definir sueldo_semanal, dias_trabajados, horas_extras, sueldo_diario, sueldo_por_hora, sueldo_total_dias, pago_horas_extra, pago_horas_extra_adicional, total_horas_extra, sueldo_bruto, deduccion_lisr, deduccion_imss, cuota_sindical, total_deducciones, sueldo_final Como Real
    Imprimir "Ingrese su Nombre"
    Leer nombre_empleado
    Imprimir "Ingrese su Direccion"
    Leer direccion_empleado
    Imprimir "¿Qué puesto Ocupa?"
    Leer puesto_empleado
    Imprimir "Ingrese su Sueldo Semanal"
    Leer sueldo_semanal
    Imprimir "Ingrese los días trabajados"
    Leer dias_trabajados
    Imprimir "Ingrese horas extras trabajadas"
    Leer horas_extras
	
    sueldo_diario = sueldo_semanal / 6  
    sueldo_por_hora = sueldo_diario / 8  
    sueldo_total_dias = sueldo_diario * dias_trabajados  
    
   
    Si horas_extras <= 8 Entonces
        pago_horas_extra = horas_extras * 2 
        total_horas_extra = pago_horas_extra * sueldo_por_hora 
        Imprimir "Pago por horas extra: $", total_horas_extra
    Sino
        Si horas_extras > 8 Entonces
            pago_horas_extra = 8 * 2 
            pago_horas_extra_adicional = (horas_extras - 8) * 3 
            total_horas_extra = pago_horas_extra + pago_horas_extra_adicional  
            total_horas_extra = total_horas_extra * sueldo_por_hora  
            Imprimir "Pago por horas extra: $", total_horas_extra
        FinSi
    FinSi
    sueldo_bruto = sueldo_total_dias + total_horas_extra
    Imprimir "Sueldo más horas extras: $", sueldo_bruto
    
   
    Si sueldo_bruto > 0 y sueldo_bruto <= 2500 Entonces
        deduccion_lisr = (sueldo_bruto / 100) * 4  
    Sino
        Si sueldo_bruto > 2500 Entonces
            deduccion_lisr = (sueldo_bruto / 100) * 7  
        FinSi
    FinSi
    Si sueldo_bruto > 0 y sueldo_bruto <= 3000 Entonces
        deduccion_imss = (sueldo_bruto / 100) * 3  
    Sino
        Si sueldo_bruto > 3000 Entonces
            deduccion_imss = (sueldo_bruto / 100) * 5  
        FinSi
    FinSi
    
    cuota_sindical = (sueldo_bruto / 100) * 2  
    
   
    Imprimir "Deducción de LISR: $", deduccion_lisr
    Imprimir "Deducción de IMSS: $", deduccion_imss
    Imprimir "Cuota sindical: $", cuota_sindical
 
    total_deducciones = deduccion_lisr + deduccion_imss + cuota_sindical
    Imprimir "Total de deducciones: $", total_deducciones
    
    sueldo_final = sueldo_bruto - total_deducciones
    Imprimir "Su sueldo final es de: $", sueldo_final
FinAlgoritmo
