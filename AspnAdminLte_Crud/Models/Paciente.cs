using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace AspnAdminLte_Crud.Models
{
    public class Paciente
    {
        public int PacienteId { get; set; }
        [Required(ErrorMessage ="O nome do paciente é obrigatório", AllowEmptyStrings = false)]
        public string Nome { get; set; }
        [Required(ErrorMessage = "O email do paciente é obrigatório", AllowEmptyStrings = false)]
        public string Email { get; set; }
        [Required(ErrorMessage = "O telefone do paciente é obrigatório", AllowEmptyStrings = false)]
        public string Telefone { get; set; }
        [Required(ErrorMessage = "Infomre a clinica do paciente", AllowEmptyStrings = false)]
        public string Clinica{ get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        [Display(Name ="Data do Cadastro")]
        [Required(ErrorMessage = "Informe a data do cadastro")]
        public DateTime DataCadastro { get; set; }
    }
}
