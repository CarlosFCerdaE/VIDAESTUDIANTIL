﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VidaEstudiantil.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class VIDAESTUDIANTILEntities : DbContext
    {
        public VIDAESTUDIANTILEntities()
            : base("name=VIDAESTUDIANTILEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CARRERA> CARRERA { get; set; }
        public virtual DbSet<FACULTAD> FACULTAD { get; set; }
    
        public virtual ObjectResult<GetAllFacultad_Result> GetAllFacultad()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllFacultad_Result>("GetAllFacultad");
        }
    
        public virtual ObjectResult<SaveCarrera_Result> SaveCarrera(string nOMBRE, Nullable<int> iDFACULTAD)
        {
            var nOMBREParameter = nOMBRE != null ?
                new ObjectParameter("NOMBRE", nOMBRE) :
                new ObjectParameter("NOMBRE", typeof(string));
    
            var iDFACULTADParameter = iDFACULTAD.HasValue ?
                new ObjectParameter("IDFACULTAD", iDFACULTAD) :
                new ObjectParameter("IDFACULTAD", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SaveCarrera_Result>("SaveCarrera", nOMBREParameter, iDFACULTADParameter);
        }
    
        public virtual ObjectResult<SaveFacultad_Result> SaveFacultad(string nOMBRE)
        {
            var nOMBREParameter = nOMBRE != null ?
                new ObjectParameter("NOMBRE", nOMBRE) :
                new ObjectParameter("NOMBRE", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SaveFacultad_Result>("SaveFacultad", nOMBREParameter);
        }
    
        public virtual ObjectResult<UpdateCarrera_Result> UpdateCarrera(Nullable<int> iDCARRERA, string nOMBRE, Nullable<bool> eSTADO, Nullable<int> iDFACULTAD)
        {
            var iDCARRERAParameter = iDCARRERA.HasValue ?
                new ObjectParameter("IDCARRERA", iDCARRERA) :
                new ObjectParameter("IDCARRERA", typeof(int));
    
            var nOMBREParameter = nOMBRE != null ?
                new ObjectParameter("NOMBRE", nOMBRE) :
                new ObjectParameter("NOMBRE", typeof(string));
    
            var eSTADOParameter = eSTADO.HasValue ?
                new ObjectParameter("ESTADO", eSTADO) :
                new ObjectParameter("ESTADO", typeof(bool));
    
            var iDFACULTADParameter = iDFACULTAD.HasValue ?
                new ObjectParameter("IDFACULTAD", iDFACULTAD) :
                new ObjectParameter("IDFACULTAD", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<UpdateCarrera_Result>("UpdateCarrera", iDCARRERAParameter, nOMBREParameter, eSTADOParameter, iDFACULTADParameter);
        }
    
        public virtual ObjectResult<UpdateFacultad_Result> UpdateFacultad(Nullable<int> iDFACULTAD, string nOMBRE, Nullable<bool> eSTADO)
        {
            var iDFACULTADParameter = iDFACULTAD.HasValue ?
                new ObjectParameter("IDFACULTAD", iDFACULTAD) :
                new ObjectParameter("IDFACULTAD", typeof(int));
    
            var nOMBREParameter = nOMBRE != null ?
                new ObjectParameter("NOMBRE", nOMBRE) :
                new ObjectParameter("NOMBRE", typeof(string));
    
            var eSTADOParameter = eSTADO.HasValue ?
                new ObjectParameter("ESTADO", eSTADO) :
                new ObjectParameter("ESTADO", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<UpdateFacultad_Result>("UpdateFacultad", iDFACULTADParameter, nOMBREParameter, eSTADOParameter);
        }
    
        public virtual ObjectResult<GetCarreraByFacultad_Result> GetCarreraByFacultad(Nullable<int> iDFACULTAD)
        {
            var iDFACULTADParameter = iDFACULTAD.HasValue ?
                new ObjectParameter("IDFACULTAD", iDFACULTAD) :
                new ObjectParameter("IDFACULTAD", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetCarreraByFacultad_Result>("GetCarreraByFacultad", iDFACULTADParameter);
        }
    
        public virtual ObjectResult<GetAllCarrera_Result> GetAllCarrera()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllCarrera_Result>("GetAllCarrera");
        }
    }
}
