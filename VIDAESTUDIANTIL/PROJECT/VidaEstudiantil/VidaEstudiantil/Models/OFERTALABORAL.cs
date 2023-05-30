//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VidaEstudiantil.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class OFERTALABORAL
    {
        public int IdOfertaLaboral { get; set; }
        public string Titulo { get; set; }
        public string Descripcion { get; set; }
        public Nullable<int> IdNivelExperiencia { get; set; }
        public string Horario { get; set; }
        public decimal Salario { get; set; }
        public string Moneda { get; set; }
        public string TipoTrabajo { get; set; }
        public string Cargo { get; set; }
        public string AreaDeTrabajo { get; set; }
        public Nullable<int> IdEmpresa { get; set; }
        public bool Estado { get; set; }
        public string UsuarioCreacion { get; set; }
        public Nullable<System.DateTime> FechaCreacion { get; set; }
        public string UsuarioEdicion { get; set; }
        public Nullable<System.DateTime> FechaEdicion { get; set; }
    
        public virtual EMPRESA EMPRESA { get; set; }
        public virtual NIVELEXPERIENCIA NIVELEXPERIENCIA { get; set; }
    }
}
