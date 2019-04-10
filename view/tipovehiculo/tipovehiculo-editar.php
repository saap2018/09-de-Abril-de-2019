<h1 class="page-header">
    <?php echo $alm->id_tipov != null ? $alm->nombre_tipov : 'Nuevo Registro'; ?>
</h1>

<ol class="breadcrumb">
 <li><a href="?c=TipoVehiculo">TipoVehiculo</a></li>
  <li class="active"><?php echo $alm->id_tipov != null ? $alm->nombre_tipov : 'Nuevo Registro'; ?></li>
</ol>

<form id="frm-usuario" action="?c=TipoVehiculo&a=Guardar" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id_tipov" value="<?php echo $alm->id_tipov; ?>" />
    <div class="form-group">
        <label>Nombre del cargo</label>
        <input type="text" name="nombre_tipov" value="<?php echo $alm->nombre_tipov; ?>" class="form-control" placeholder="Nombre del tipo de vehículo" required />
    </div>
    <hr />
    
    <div class="text-right">
        <button class="btn btn-success">Guardar</button>
    </div>
</form>

<script>
    $(document).ready(function(){
        $("#frm-usuario").submit(function(){
            return $(this).validate();
        });
    })
</script>