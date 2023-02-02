//
//  ViewController.swift
//  charts-
//
//  Created by Burak Erden on 1.02.2023.
//

import UIKit
import Charts

class ViewController: UIViewController, ChartViewDelegate {

    @IBOutlet weak var myView: UIView!
    
    var barChart = BarChartView()
    
    var lineChart = LineChartView()
    
    var pieChart = PieChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChart.delegate = self
        lineChart.delegate = self
        pieChart.delegate = self
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        barChart.frame = CGRect(x: 0, y: 0, width: self.myView.frame.size.width, height: self.myView.frame.size.height)
//        myView.addSubview(barChart)
//
//        let arrayY = [4.2, 4.5, 5.1, 4.0, 4.9, 4.2, 4.5, 5.1, 4.0, 4.9]
//        var entries = [BarChartDataEntry]()
//
//        for q in 0...9 {
//            entries.append(BarChartDataEntry(x: Double(q), y: arrayY[q]))
//        }
//
//
//
//        let set = BarChartDataSet(entries: entries)
//        set.colors = ChartColorTemplates.liberty()
//
//        let data = BarChartData(dataSet: set)
//        barChart.data = data
//    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lineChart.frame = CGRect(x: 0, y: 0, width: self.myView.frame.size.width, height: self.myView.frame.size.height)
        myView.addSubview(lineChart)
        
        lineChart.rightAxis.enabled = false
        let yAxis = lineChart.leftAxis
        yAxis.labelFont = .boldSystemFont(ofSize: 12)
        yAxis.setLabelCount(6, force: false)
        yAxis.labelTextColor = .black
        yAxis.axisLineColor  = .black
        yAxis.labelPosition = .outsideChart
        
        lineChart.xAxis.labelPosition = .bottom
        lineChart.xAxis.labelFont = .boldSystemFont(ofSize: 12)
        lineChart.xAxis.setLabelCount(6, force: false)
        
        lineChart.animate(xAxisDuration: 2.5)
        
        let arrayY = [4.2, 4.5, 5.1, 4.0, 4.9, 4.2, 4.5, 5.1, 4.0, 4.9]
        var entries = [ChartDataEntry]()
        
        for y in 0...arrayY.count - 1 {
            entries.append(ChartDataEntry(x: Double(y), y: arrayY[y]))
        }
        

        
        let set = LineChartDataSet(entries: entries, label: "Demo")
        set.colors = ChartColorTemplates.liberty()
        set.drawCirclesEnabled = false
//        set.valueFont = .boldSystemFont(ofSize: 8)
        set.drawValuesEnabled = false
        set.mode = .cubicBezier
        set.lineWidth = 2
        set.setColor(.black)
        set.drawFilledEnabled = true
        set.fillColor = .black
        
        set.drawHorizontalHighlightIndicatorEnabled = false
        
        let data = LineChartData(dataSet: set)
        lineChart.data = data
    }
    
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        pieChart.frame = CGRect(x: 0, y: 0, width: self.myView.frame.size.width, height: self.myView.frame.size.height)
//        myView.addSubview(pieChart)
//
//        let arrayY = [4.2, 4.5, 5.1, 4.0, 4.9, 4.2, 4.5, 5.1, 4.0, 4.9]
//        var entries = [ChartDataEntry]()
//
//        for q in 0...9 {
//            entries.append(ChartDataEntry(x: Double(q), y: arrayY[q]))
//        }
//
//
//
//        let set = PieChartDataSet(entries: entries)
//        set.colors = ChartColorTemplates.liberty()
//
//        let data = PieChartData(dataSet: set)
//        pieChart.data = data
//    }


}

