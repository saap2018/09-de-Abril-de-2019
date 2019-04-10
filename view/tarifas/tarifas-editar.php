<h1 class="page-header">
    <?php echo $alm->id_tarifa != null ? $alm->tarifa : 'Nuevo Registro'; ?>
</h1>

<ol class="breadcrumb">
 <li><a href="?c=Tarifas">Tarifas</a></li>
  <li class="active"><?php echo $alm->id_tarifa != null ? $alm->tarifa : 'Nuevo Registro'; ?></li>
</ol>

<form id="frm-usuario" action="?c=Tarifas&a=Guardar" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id_tarifa" value="<?php echo $alm->id_tarifa; ?>" />
    <div class="form-group">
        <label>Nombre de la nueva tarifa</label>
        <input type="text" name="tarifa" value="<?php echo $alm->tarifa; ?>" class="form-control" placeholder="Nuevo tipo de tarifa" required />
    </div>
    <div class="form-group">
        <label>Valor</label>
        <input type="text" name="valor" value="<?php echo $alm->valor; ?>" class="form-control" placeholder="Valor de tarifa" required />
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