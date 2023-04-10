/*
Template Name: Skote - Admin & Dashboard Template
Author: Themesbrand
Website: https://themesbrand.com/
Contact: themesbrand@gmail.com
File: Apex Chart init js
*/

for(var i=1;i<=4;i++){
    if(document.getElementById('val'+i) && document.getElementById(i+'-u')){
        document.getElementById("val"+i).innerHTML = document.getElementById(i+"-u").value;
    }
}
if(document.getElementById('13-a') && document.getElementById("8-a") && document.getElementById("18-a") && document.getElementById("17-a") && document.getElementById("22-a") && document.getElementById("16-a") && document.getElementById("25-a") && document.getElementById("21-a") && document.getElementById("26-a")){
    document.getElementById("lblCOGMA-C").innerHTML = document.getElementById("13-a").value;
    document.getElementById("lblCOGMS-C").innerHTML = document.getElementById("8-a").value;
    document.getElementById("lblCOGMALY-C").innerHTML = document.getElementById("18-a").value;
    document.getElementById("lblDLCA").innerHTML = document.getElementById("17-a").value;
    document.getElementById("lblDLCALY").innerHTML = document.getElementById("22-a").value;
    document.getElementById("FCA").innerHTML = document.getElementById("16-a").value;
    document.getElementById("UPA").innerHTML = document.getElementById("25-a").value;
    document.getElementById("FCALY").innerHTML = document.getElementById("21-a").value;
    document.getElementById("FCS").innerHTML = document.getElementById("11-a").value;
    document.getElementById("RCA").innerHTML = document.getElementById("14-a").value;
    document.getElementById("PCA").innerHTML = document.getElementById("15-a").value;
    document.getElementById("UPALY").innerHTML = document.getElementById("26-a").value;
    document.getElementById("lblOFCA").innerHTML = document.getElementById("70-a").value;
    document.getElementById("lblOFCALY").innerHTML = document.getElementById("71-a").value;
}

var str1 = "";
var str2 = "";

if(document.getElementById('11-k') && document.getElementById("2-m") && document.getElementById("18-a") && document.getElementById("3-m")){
    var COGMval = document.getElementById("11-k").value - 100;
    if (COGMval > 0)
    {document.getElementById("tblCOGM").className = "table-danger";}
    document.getElementById("COGMCAMTD").innerHTML = COGMval.toLocaleString('us',{minimumFractionDigits: 1, maximumFractionDigits: 1});
    var FOHval = document.getElementById("16-a-1").value / document.getElementById("21-a-1").value * 100 - 100;
    if (FOHval > 0)
    {document.getElementById("tblFOH").className = "table-danger";}
    document.getElementById("FOHCAMTD").innerHTML = FOHval.toLocaleString('us',{minimumFractionDigits: 1, maximumFractionDigits: 1});
    var DLval = document.getElementById("17-a-1").value / document.getElementById("22-a-1").value * 100 - 100;
    if (DLval > 0)
    {document.getElementById("tblDL").className = "table-danger";}
    document.getElementById("DLCAMTD").innerHTML = DLval.toLocaleString('us',{minimumFractionDigits: 1, maximumFractionDigits: 1});
    var OFval = (document.getElementById("70-a-1").value * 1) / document.getElementById("71-a-1").value * 100 - 100;
    if(OFval < 0)
    {document.getElementById("tblOF").className = "table-danger";}
    document.getElementById("OFCAMTD").innerHTML = OFval.toLocaleString('us',{minimumFractionDigits: 1, maximumFractionDigits: 1});
}

//mix chart 

//start mixed chart COGM Unit
var dom = document.getElementById("mix-line-bar-cogm");
var myChart = echarts.init(dom,null, {height:150});
var app = {};
option = null;
app.title = 'Data view';
var hid1 = document.getElementById('1-1').value;
const data1 = hid1.split(",");
var hid2 = document.getElementById('1-2').value;
const data2 = hid2.split(",");
option = {
    // Setup grid
    grid: {
        zlevel: 0,
        x: 80,
        x2: 50,
        y: 30,
        y2: 30,
        borderWidth: 0,
        backgroundColor: 'rgba(0,0,0,0)',
        borderColor: 'rgba(0,0,0,0)',
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross',
            crossStyle: {
                color: '#999'
            }
        }
    },
    color: ['#34c38f', '#556ee6', '#f46a6a'],
    legend: {
        data:['MTD','YTD'],
        textStyle: {color: '#8791af'},
    },
    xAxis: [
        {
            type: 'category',
            data: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
            axisPointer: {
                type: 'shadow'
            },
            axisLine: {
                lineStyle: {
                  color: '#8791af'
                },
            },
        }
    ],
    yAxis: [
        {
            type: 'value',
            name: 'Unit',
            min: 0,
            max: 25000,
            interval: 5000,
            axisLine: {
                lineStyle: {
                  color: '#8791af'
                },
            },
            splitLine: {
                lineStyle: {
                    color:"rgba(166, 176, 207, 0.1)"
                }
            },
            axisLabel: {
                formatter: '{value} U'
            }
        },
    ],
    series: [
        {
            name:'MTD',
            type:'bar',
            data:data1
        },
        {
            name:'YTD',
            type:'line',
            //yAxisIndex: 1, 
            data:data2
        }
    ],
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
};

// start mixed chart FOH unit

var dom = document.getElementById("mix-line-bar-foh");
var myChart = echarts.init(dom,null,{height:150});
var app = {};
option = null;
app.title = 'Data view';
var hid1 = document.getElementById('2-1').value;
const data3 = hid1.split(",");
var hid2 = document.getElementById('2-2').value;
const data4 = hid2.split(",");

option = {
    // Setup grid
    grid: {
        zlevel: 0,
        x: 80,
        x2: 50,
        y: 30,
        y2: 30,
        borderWidth: 0,
        backgroundColor: 'rgba(0,0,0,0)',
        borderColor: 'rgba(0,0,0,0)',
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross',
            crossStyle: {
                color: '#999'
            }
        }
    },
    color: ['#34c38f', '#556ee6', '#f46a6a'],
    legend: {
        data:['MTD','YTD'],
        textStyle: {color: '#8791af'}
    },
    xAxis: [
        {
            type: 'category',
            data: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
            axisPointer: {
                type: 'shadow'
            },
            axisLine: {
                lineStyle: {
                  color: '#8791af'
                },
            },
        }
    ],
    yAxis: [
        {
            type: 'value',
            name: 'Unit',
            min: 0,
            max: 10000,
            interval: 2000,
            axisLine: {
                lineStyle: {
                  color: '#8791af'
                },
            },
            splitLine: {
                lineStyle: {
                    color:"rgba(166, 176, 207, 0.1)"
                }
            },
            axisLabel: {
                formatter: '{value} U'
            }
        },
    ],
    series: [
        {
            name:'MTD',
            type:'bar',
            data:data3
        },
        {
            name:'YTD',
            type:'line',
            //yAxisIndex: 1, 
            data:data4
        }
    ]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
};

//start mixed chart DL Unit

var dom = document.getElementById("mix-line-bar-dl");
var myChart = echarts.init(dom,null,{height:150});
var app = {};
option = null;
app.title = 'Data view';
var hid1 = document.getElementById('3-1').value;
const data5 = hid1.split(",");
var hid2 = document.getElementById('3-2').value;
const data6 = hid2.split(",");

option = {
    // Setup grid
    grid: {
        zlevel: 0,
        x: 80,
        x2: 50,
        y: 30,
        y2: 30,
        borderWidth: 0,
        backgroundColor: 'rgba(0,0,0,0)',
        borderColor: 'rgba(0,0,0,0)',
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross',
            crossStyle: {
                color: '#999'
            }
        }
    },
    color: ['#34c38f', '#556ee6', '#f46a6a'],
    legend: {
        data:['MTD','YTD'],
        textStyle: {color: '#8791af'}
    },
    xAxis: [
        {
            type: 'category',
            data: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
            axisPointer: {
                type: 'shadow'
            },
            axisLine: {
                lineStyle: {
                  color: '#8791af'
                },
            },
        }
    ],
    yAxis: [
        {
            type: 'value',
            name: 'Unit',
            min: 0,
            max: 2000,
            interval: 400,
            axisLine: {
                lineStyle: {
                  color: '#8791af'
                },
            },
            splitLine: {
                lineStyle: {
                    color:"rgba(166, 176, 207, 0.1)"
                }
            },
            axisLabel: {
                formatter: '{value} U'
            }
        },
    ],
    series: [
        {
            name:'MTD',
            type:'bar',
            data:data5
        },
        {
            name:'YTD',
            type:'line',
            //yAxisIndex: 1, 
            data:data6
        }
    ]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
};

//start mixed chart Order Fulfillment
var dom = document.getElementById("mix-line-bar-of");
var myChart = echarts.init(dom,null,{height:150});
var app = {};
option = null;
app.title = 'Data view';
var hid1 = document.getElementById('4-1').value;
const dataof1 = hid1.split(",");
var hid2 = document.getElementById('4-2').value;
const dataof2 = hid2.split(",");

option = {
    // Setup grid
    grid: {
        zlevel: 0,
        x: 80,
        x2: 50,
        y: 30,
        y2: 30,
        borderWidth: 0,
        backgroundColor: 'rgba(0,0,0,0)',
        borderColor: 'rgba(0,0,0,0)',
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross',
            crossStyle: {
                color: '#999'
            }
        }
    },
    color: ['#34c38f', '#556ee6', '#f46a6a'],
    legend: {
        data:['MTD','YTD'],
        textStyle: {color: '#8791af'}
    },
    xAxis: [
        {
            type: 'category',
            data: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
            axisPointer: {
                type: 'shadow'
            },
            axisLine: {
                lineStyle: {
                  color: '#8791af'
                },
            },
        }
    ],
    yAxis: [
        {
            type: 'value',
            name: 'Unit',
            min: 0,
            max: 120,
            interval: 20,
            axisLine: {
                lineStyle: {
                  color: '#8791af'
                },
            },
            splitLine: {
                lineStyle: {
                    color:"rgba(166, 176, 207, 0.1)"
                }
            },
            axisLabel: {
                formatter: '{value} U'
            }
        },
    ],
    series: [
        {
            name:'MTD',
            type:'bar',
            data:dataof1
        },
        {
            name:'YTD',
            type:'line',
            //yAxisIndex: 1, 
            data:dataof2
        }
    ]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
};

// end mixed chart

//line chart COST

for(var i = 8; i < 92;i++){

    if(document.getElementById('line-chartC-'+i)){
        var hid1 = document.getElementById(i).value;
        var data7 = hid1.split(",");

        var options = {
            series: [{
            name: 'MTD',
                data:Object.values(data7)
            }],
            xaxis:
                {
                    categories: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
                }
            ,
            chart: {
                type: 'bar',
                height: 320,
                dropShadow: {
                    enabled: true,top: 18,left: 7,blur: 8,
                },
            },
            dataLabels: {
                enabled: false
            },
            colors: ['#34c38f'],
            tooltip: {
                y: {
                    formatter: function (val) {
                        val = val.toLocaleString('en-US');
                        return val;
                    }
                }
            }
        };

        var chart = new ApexCharts(document.querySelector("#line-chartC-"+i), options);
        chart.render();    
        // console.log(document.getElementById('line-chartC-'+i));
    }

//line chart incident
    if(document.getElementById('line-chartI-'+i)){
        var hid1 = document.getElementById(i).value;
        const data7 = hid1.split(",");
        var options = {
            series: [{
            name: 'MTD',
                data: data7
            }],
            xaxis:
                {
                    categories: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
                }
            ,
            chart: {
                height: 320,
                type: 'bar',
                toolbar: 'false',
                dropShadow: {
                    enabled: true,
                    color: '#000',
                    top: 18,
                    left: 7,
                    blur: 8,
                    opacity: 0.2
                },
            },
            dataLabels: {
                enabled: false
            },
            colors: ['#556ee6'],
        
            stroke: {
                curve: 'smooth',
                width: 3,
            },
        
        };
        
        var chart = new ApexCharts(document.querySelector("#line-chartI-"+i), options);
        chart.render();
    }

//line chart Learning

    if(document.getElementById('line-chartL-'+i)){
        var hid1 = document.getElementById(i).value;
        const data7 = hid1.split(",");
        var options = {
            series: [{
            name: 'MTD',
                data: data7
            }],
            xaxis:
                {
                    categories: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
                }
            ,
            chart: {
                height: 320,
                type: 'bar',
                toolbar: 'false',
                dropShadow: {
                    enabled: true,
                    color: '#000',
                    top: 18,
                    left: 7,
                    blur: 8,
                    opacity: 0.2
                },
            },
            dataLabels: {
                enabled: false
            },
            colors: ['#556ee6'],

            stroke: {
                curve: 'smooth',
                width: 3,
            },

        };

        var chart = new ApexCharts(document.querySelector("#line-chartL-"+i), options);
        chart.render();
    }

// line chart Production

    if(document.getElementById('line-chartP-'+i)){
        var hid1 = document.getElementById(i).value;
        const data7 = hid1.split(",");
        var options = {
            series: [{
            name: 'MTD',
                data: data7
            }],
            xaxis:
                {
                    categories: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
                }
            ,
            chart: {
                height: 320,
                type: 'bar',
                toolbar: 'false',
                dropShadow: {
                    enabled: true,
                    color: '#000',
                    top: 18,
                    left: 7,
                    blur: 8,
                    opacity: 0.2
                },
            },
            dataLabels: {
                enabled: false
            },
            colors: ['#556ee6'],

            stroke: {
                curve: 'smooth',
                width: 3,
            },

        };

        var chart = new ApexCharts(document.querySelector("#line-chartP-"+i), options);
        chart.render();
    }
// line chart Quality
    if(document.getElementById('line-chartQ-'+i)){
        var hid1 = document.getElementById(i).value;
        const data7 = hid1.split(",");
        var options = {
            series: [{
            name: 'MTD',
                data: data7
            }],
            xaxis:
                {
                    categories: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
                }
            ,
            chart: {
                height: 320,
                type: 'bar',
                toolbar: 'false',
                dropShadow: {
                    enabled: true,
                    color: '#000',
                    top: 18,
                    left: 7,
                    blur: 8,
                    opacity: 0.2
                },
            },
            dataLabels: {
                enabled: false
            },
            colors: ['#556ee6'],

            stroke: {
                curve: 'smooth',
                width: 3,
            },

        };

        var chart = new ApexCharts(document.querySelector("#line-chartQ-"+i), options);
        chart.render();
    }
}

document.getElementById('ChartC').style.display = "block";
document.getElementById('optChartC').style.display = "block";
document.getElementById('ChartI').style.display = "none";
document.getElementById('optChartI').style.display = "none";
document.getElementById('ChartL').style.display = "none";
document.getElementById('optChartL').style.display = "none";
document.getElementById('ChartP').style.display = "none";
document.getElementById('optChartP').style.display = "none";
document.getElementById('ChartQ').style.display = "none";
document.getElementById('optChartQ').style.display = "none";

for (var i = 8;i < 92;i++){
    if(document.getElementById('line-chartC-'+i)){
        document.getElementById('line-chartC-'+i).style.display = "none";
    }
    if(document.getElementById('line-chartI-'+i)){
        document.getElementById('line-chartI-'+i).style.display = "none";
    }
    if(document.getElementById('line-chartL-'+i)){
        document.getElementById('line-chartL-'+i).style.display = "none";
    }
    if(document.getElementById('line-chartP-'+i)){
        document.getElementById('line-chartP-'+i).style.display = "none";
    }
    if(document.getElementById('line-chartQ-'+i)){
        document.getElementById('line-chartQ-'+i).style.display = "none";
    }
    document.getElementById('line-chartC-8').style.display = "block";
    document.getElementById('line-chartI-78').style.display = "block";
    document.getElementById('line-chartL-84').style.display = "block";
    document.getElementById('line-chartP-62').style.display = "block";
    document.getElementById('line-chartQ-50').style.display = "block";
}
function myFunctionC(){
    var y = document.getElementById("optChartC").value;
    for (var i = 8;i < 92;i++){
        if(document.getElementById('line-chartC-'+i)){
            document.getElementById('line-chartC-'+i).style.display = "none";
        }
    }
    if(document.getElementById(y+"-a")){
        document.getElementById("valueC1").innerHTML = document.getElementById(y+"-a").value;
        }
    document.getElementById("valueC2").innerHTML = document.getElementById(y+"-b").value;
    document.getElementById("line-chartC-"+y).style.display = "block";
    window.dispatchEvent(new Event('resize'));
}

function myFunctionI(){
    var y = document.getElementById("optChartI").value;
    for (var i = 78;i < 84;i++){
        document.getElementById('line-chartI-'+i).style.display = "none";
    }
    if(document.getElementById(y+"-a")){
        document.getElementById("valueI1").innerHTML = document.getElementById(y+"-a").value;
        }
    document.getElementById("valueI2").innerHTML = document.getElementById(y+"-b").value;
    document.getElementById('line-chartI-'+y).style.display = "block";
    window.dispatchEvent(new Event('resize'));
}

function myFunctionL(){
    var y = document.getElementById("optChartL").value;
    for (var i = 84;i < 89;i++){
        document.getElementById('line-chartL-'+i).style.display = "none";
    }
    if(document.getElementById(y+"-a")){
        document.getElementById("valueL1").innerHTML = document.getElementById(y+"-a").value;
        }
    document.getElementById("valueL2").innerHTML = document.getElementById(y+"-b").value;
    document.getElementById('line-chartL-'+y).style.display = "block";
    window.dispatchEvent(new Event('resize'));
}

function myFunctionP(){
    var y = document.getElementById("optChartP").value;
    for (var i = 62;i < 72;i++){
        document.getElementById('line-chartP-'+i).style.display = "none";
    }
    if(document.getElementById(y+"-a")){
        document.getElementById("valueP1").innerHTML = document.getElementById(y+"-a").value;
        }
    document.getElementById("valueP2").innerHTML = document.getElementById(y+"-b").value;
    document.getElementById('line-chartP-'+y).style.display = "block";
    window.dispatchEvent(new Event('resize'));
}

function myFunctionQ(){
    var y = document.getElementById("optChartQ").value;
    for (var i = 50;i < 92;i++){
        if(document.getElementById('line-chartQ-'+i)){
            document.getElementById('line-chartQ-'+i).style.display = "none";
        }
    }
    if(document.getElementById(y+"-a")){
        document.getElementById("valueQ1").innerHTML = document.getElementById(y+"-a").value;
        }
    document.getElementById("valueQ2").innerHTML = document.getElementById(y+"-b").value;
    document.getElementById('line-chartQ-'+y).style.display = "block";
    window.dispatchEvent(new Event('resize'));
}

function myFunction() {
        var x = document.getElementById("optrawdata").value;
        if (x === "Cost") {
            document.getElementById('ChartC').style.display = "block";
            document.getElementById('optChartC').style.display = "block";
            document.getElementById('ChartI').style.display = "none";
            document.getElementById('optChartI').style.display = "none";
            document.getElementById('ChartL').style.display = "none";
            document.getElementById('optChartL').style.display = "none";
            document.getElementById('ChartP').style.display = "none";
            document.getElementById('optChartP').style.display = "none";
            document.getElementById('ChartQ').style.display = "none";
            document.getElementById('optChartQ').style.display = "none";
        }
        else if (x === "Incident"){
            document.getElementById('ChartC').style.display = "none";
            document.getElementById('optChartC').style.display = "none";
            document.getElementById('ChartI').style.display = "block";
            document.getElementById('optChartI').style.display = "block";
            document.getElementById('ChartL').style.display = "none";
            document.getElementById('optChartL').style.display = "none";
            document.getElementById('ChartP').style.display = "none";
            document.getElementById('optChartP').style.display = "none";
            document.getElementById('ChartQ').style.display = "none";
            document.getElementById('optChartQ').style.display = "none";
        }
        else if (x === "Learning"){
            document.getElementById('ChartC').style.display = "none";
            document.getElementById('optChartC').style.display = "none";
            document.getElementById('ChartI').style.display = "none";
            document.getElementById('optChartI').style.display = "none";
            document.getElementById('ChartL').style.display = "block";
            document.getElementById('optChartL').style.display = "block";
            document.getElementById('ChartP').style.display = "none";
            document.getElementById('optChartP').style.display = "none";
            document.getElementById('ChartQ').style.display = "none";
            document.getElementById('optChartQ').style.display = "none";
        }
        else if (x === "Production"){
            document.getElementById('ChartC').style.display = "none";
            document.getElementById('optChartC').style.display = "none";
            document.getElementById('ChartI').style.display = "none";
            document.getElementById('optChartI').style.display = "none";
            document.getElementById('ChartL').style.display = "none";
            document.getElementById('optChartL').style.display = "none";
            document.getElementById('ChartP').style.display = "block";
            document.getElementById('optChartP').style.display = "block";
            document.getElementById('ChartQ').style.display = "none";
            document.getElementById('optChartQ').style.display = "none";
        }
        else if (x === "Quality"){
            document.getElementById('ChartC').style.display = "none";
            document.getElementById('optChartC').style.display = "none";
            document.getElementById('ChartI').style.display = "none";
            document.getElementById('optChartI').style.display = "none";
            document.getElementById('ChartL').style.display = "none";
            document.getElementById('optChartL').style.display = "none";
            document.getElementById('ChartP').style.display = "none";
            document.getElementById('optChartP').style.display = "none";
            document.getElementById('ChartQ').style.display = "block";
            document.getElementById('optChartQ').style.display = "block";
        }
    }

    