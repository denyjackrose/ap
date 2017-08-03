{% extends 'template/aplous.volt' %} {% block content %}

<div class="input-group transparent">
  <span class="input-group-addon p-l-15 p-r-15">
                                <i class="fa fa-search"></i>
                            </span>
  <input type="text" id="search-table" class="form-control p-t-20 p-b-20" placeholder="Masukan yang ingin anda cari...">
</div>

<div class="c-table">
  <table class="table table-bordered table-hover" id="tableWithSearch">
    <thead>
      <tr>
        <th style="width: 200px;">Nama</th>
        <th>Petugas Transfer/Acc di</th>
        
      </tr>
    </thead>


    <tbody>
      <tr class="no-m">
        <td class="v-align-middle">Abu Bakar. S.Kp</td>
        <td class="v-align-middle">SIMULASI CENTER</td>
        
      </tr>


    </tbody>
  </table>
</div>
<!-- Apply the plugin Disini -->


{% endblock %}