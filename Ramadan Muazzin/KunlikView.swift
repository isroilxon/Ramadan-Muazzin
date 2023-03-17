
import UIKit

class KunlikView: UIView {
    let counterView = UIView()
    let circle = UIImageView()
    let ramazonLbl = UILabel()
    let monthLbl = UILabel()
    let viewSaxar = UIView()
    let viewIftor = UIView()
    let saxarTime = UILabel()
    let iftorTime = UILabel()
    let saxarLbl = UILabel()
    let iftorLbl = UILabel()
    let tablview = UITableView()
    let tableBack = UIView()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        dayCounter()
        saxarlik()
        tableviev()
        backTable()
        
    }
    
    func dayCounter(){
        
        self.addSubview(counterView)
        counterView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(180)
        }
        counterView.backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        counterView.layer.cornerRadius = 17
        
        counterView.addSubview(ramazonLbl)
        ramazonLbl.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.left.equalToSuperview().offset(30)
        }
        ramazonLbl.text = "4 - Ramazon"
        ramazonLbl.textColor = .systemGray
        
        counterView.addSubview(monthLbl)
        monthLbl.snp.makeConstraints { make in
            make.top.equalTo(ramazonLbl.snp_bottomMargin).offset(20)
            make.left.equalToSuperview().offset(30)
        }
        monthLbl.text = "5 - May"
        
        counterView.addSubview(circle)
        circle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.right.bottom.equalToSuperview().offset(-20)
            make.width.equalTo(140)
        }
        circle.image = UIImage(systemName: "chart.pie.fill")
    }
    
    func saxarlik(){
        
        self.addSubview(viewSaxar)
        viewSaxar.snp.makeConstraints { make in
            make.top.equalTo(counterView.snp_bottomMargin).offset(30)
            make.left.equalToSuperview().offset(20)
            make.height.equalTo(120)
            make.width.equalTo(167)
        }
        viewSaxar.backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        viewSaxar.layer.cornerRadius = 15
        
        self.addSubview(viewIftor)
        viewIftor.snp.makeConstraints { make in
            make.top.equalTo(counterView.snp_bottomMargin).offset(30)
            make.left.equalTo(viewSaxar.snp_rightMargin).offset(20)
            make.height.equalTo(120)
            make.width.equalTo(167)
        }
        viewIftor.backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        viewIftor.layer.cornerRadius = 15
        
        viewSaxar.addSubview(saxarTime)
        saxarTime.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        saxarTime.text = "06 : 30"
        saxarTime.font = UIFont(name: "Metropolis-Bold", size: 25)
        
        viewSaxar.addSubview(saxarLbl)
        saxarLbl.snp.makeConstraints { make in
            make.top.equalTo(saxarTime.snp_bottomMargin).offset(10)
            make.centerX.equalToSuperview()
        }
        saxarLbl.text = "Saharlik vaqti"
        saxarLbl.font = .metropolis(weight: .SemiBold, size: 20)
        saxarLbl.textColor = .gray
        
        viewIftor.addSubview(iftorTime)
        iftorTime.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        iftorTime.text = "19 : 30"
        iftorTime.font = UIFont(name: "Metropolis-Bold", size: 25)
        
        viewIftor.addSubview(iftorLbl)
        iftorLbl.snp.makeConstraints { make in
            make.top.equalTo(iftorTime.snp_bottomMargin).offset(10)
            make.centerX.equalToSuperview()
        }
        iftorLbl.text = "Iftorlik vaqti"
        iftorLbl.textColor = .gray
        iftorLbl.font = .metropolis(weight: .SemiBold, size: 20)
        
    }
    
    func backTable(){
        self.addSubview(tableBack)
        tableBack.snp.makeConstraints { make in
            make.top.equalTo(viewIftor.snp_bottomMargin).offset(30)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-10)
        }
        tableBack.layer.cornerRadius = 15
        tableBack.clipsToBounds = true
    }
    
    func tableviev() {
        
        tableBack.addSubview(tablview)
        tablview.snp.makeConstraints { make in
            make.top.left.bottom.right.equalToSuperview()
        }
        

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
