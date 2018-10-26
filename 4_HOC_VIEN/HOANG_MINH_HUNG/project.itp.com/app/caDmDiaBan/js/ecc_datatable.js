var ECC_DATATABLE = function(oTable){
    this.TABLE = oTable;
    this.HEADER = [];
    this.DATA = [];
    
    this.addRow = function(aRow){
        that.DATA.push(aRow);
    };
    
    this.bindTable = function(){
        that.TABLE.clear().draw();
        that.TABLE.rows.add(that.DATA).draw();
    };
    
    
    
    var that = this;
};
