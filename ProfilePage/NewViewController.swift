//
//  NewViewController.swift
//  ProfilePage
//
//  Created by Alexey Davidenko on 30.01.2022.
//

import UIKit

class NewViewController: UIViewController {

    private lazy var parentStackView: UIStackView = {
        let stackView = UIStackView()

        stackView.axis = .vertical
        stackView.spacing = Metric.parentStackView

        return stackView
    }()

    private lazy var avatar = createImage(named: "avatar")

    private lazy var nameLabel = createLabel(with: Strings.nameLabel, textColor: .white, fontSize: FontSize.name)
    private lazy var statusLabel = createLabel(with: Strings.statusLabel, textColor: LabelColor.blueLabelColor, fontSize: FontSize.status)
    private lazy var connectionLabel = createLabel(with: Strings.connectionLabel, textColor: LabelColor.greyLabelColor, fontSize: FontSize.online)
    private lazy var firstVerticalStackView = createVerticalStackView(spacing: Metric.verticalNameStackViewSpacing, aligment: .leading )

    private lazy var firstHorizontalStackView = createHorizontalStackView(spacing: 20)

    private lazy var editButton = createButton(with: Strings.buttonText, titleColor: .white, backgroundColor: LabelColor.darkGreyColor, width: Metric.buttonWidth, height: Metric.buttonHeight)

    private lazy var cameraImage = createImage(named: "camera")
    private lazy var cameraLabel = createLabel(with: Strings.cameraLabel, textColor: LabelColor.blueLabelColor, fontSize: FontSize.library)
    private lazy var secondVerticalStackView = createVerticalStackView(spacing: Metric.verticalAlbumStackViewSpacing, aligment: .center)

    private lazy var noteImage = createImage(named: "note")
    private lazy var noteLabel = createLabel(with: Strings.noteLabel, textColor: LabelColor.blueLabelColor, fontSize: FontSize.library)
    private lazy var thirdVerticalStackView = createVerticalStackView(spacing: Metric.verticalAlbumStackViewSpacing, aligment: .center)

    private lazy var albumImage = createImage(named: "album")
    private lazy var albumLabel = createLabel(with: Strings.albumLabel, textColor: LabelColor.blueLabelColor, fontSize: FontSize.library)
    private lazy var forthVerticalStackView = createVerticalStackView(spacing: Metric.verticalAlbumStackViewSpacing, aligment: .center)

    private lazy var clipImage = createImage(named: "clip")
    private lazy var clipLabel = createLabel(with: Strings.clipLabel, textColor: LabelColor.blueLabelColor, fontSize: FontSize.library)
    private lazy var fifthVerticalStackView = createVerticalStackView(spacing: Metric.verticalAlbumStackViewSpacing, aligment: .center)

    private lazy var secondHorizontalStackView = createHorizontalStackView(spacing: 0)

    private lazy var houseImage = createImage(named: "house")
    private lazy var houseLabel = createLabel(with: Strings.houseLabel, textColor: LabelColor.greyLabelColor, fontSize: FontSize.status)
    private lazy var thirdHorizontalStackView = createHorizontalStackView(spacing: Metric.horizontalStackViewSpacing)

    private lazy var subsImage = createImage(named: "connection")
    private lazy var subsLabel = createLabel(with: Strings.subsLabel, textColor: LabelColor.greyLabelColor, fontSize: FontSize.status)
    private lazy var fourthHorizontalStackView = createHorizontalStackView(spacing: Metric.horizontalStackViewSpacing)

    private lazy var workImage = createImage(named: "work")
    private lazy var workLabel = createLabel(with: Strings.workLabel, textColor: LabelColor.blueLabelColor, fontSize: FontSize.status)
    private lazy var fifthHorizontalStackView = createHorizontalStackView(spacing: Metric.horizontalStackViewSpacing)

    private lazy var giftImage = createImage(named: "snow")
    private lazy var giftLabel = createLabel(with: Strings.giftLabel, textColor: LabelColor.violetLabelColor, fontSize: FontSize.status)
    private lazy var sixthHorizontalStackView = createHorizontalStackView(spacing: Metric.horizontalStackViewSpacing)

    private lazy var infoImage = createImage(named: "info")
    private lazy var infoLabel = createLabel(with: Strings.infoLabel, textColor: LabelColor.whiteLabelColor, fontSize: FontSize.status)
    private lazy var seventhHorizontalStackView = createHorizontalStackView(spacing: Metric.horizontalStackViewSpacing)

    private lazy var sixthVerticalStackView = createVerticalStackView(spacing: Metric.verticalInfoStackViewSpacing, aligment: .leading)

    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()


        setupHierarchy()
        setupLayout()
        setupView()
    }

    // MARK: - Settings

    private func setupHierarchy() {
        view.addSubview(parentStackView)

        parentStackView.addArrangedSubview(firstHorizontalStackView)
        parentStackView.addArrangedSubview(firstVerticalStackView)
        parentStackView.addArrangedSubview(editButton)
        parentStackView.addArrangedSubview(secondHorizontalStackView)
        parentStackView.addArrangedSubview(sixthVerticalStackView)


        firstVerticalStackView.addArrangedSubview(nameLabel)
        firstVerticalStackView.addArrangedSubview(statusLabel)
        firstVerticalStackView.addArrangedSubview(connectionLabel)

        firstHorizontalStackView.addArrangedSubview(avatar)
        firstHorizontalStackView.addArrangedSubview(firstVerticalStackView)

        secondVerticalStackView.addArrangedSubview(cameraImage)
        secondVerticalStackView.addArrangedSubview(cameraLabel)

        thirdVerticalStackView.addArrangedSubview(noteImage)
        thirdVerticalStackView.addArrangedSubview(noteLabel)

        forthVerticalStackView.addArrangedSubview(albumImage)
        forthVerticalStackView.addArrangedSubview(albumLabel)

        fifthVerticalStackView.addArrangedSubview(clipImage)
        fifthVerticalStackView.addArrangedSubview(clipLabel)

        sixthVerticalStackView.addArrangedSubview(thirdHorizontalStackView)
        sixthVerticalStackView.addArrangedSubview(fourthHorizontalStackView)
        sixthVerticalStackView.addArrangedSubview(fifthHorizontalStackView)
        sixthVerticalStackView.addArrangedSubview(sixthHorizontalStackView)
        sixthVerticalStackView.addArrangedSubview(seventhHorizontalStackView)

        secondHorizontalStackView.addArrangedSubview(secondVerticalStackView)
        secondHorizontalStackView.addArrangedSubview(thirdVerticalStackView)
        secondHorizontalStackView.addArrangedSubview(forthVerticalStackView)
        secondHorizontalStackView.addArrangedSubview(fifthVerticalStackView)

        thirdHorizontalStackView.addArrangedSubview(houseImage)
        thirdHorizontalStackView.addArrangedSubview(houseLabel)

        fourthHorizontalStackView.addArrangedSubview(subsImage)
        fourthHorizontalStackView.addArrangedSubview(subsLabel)

        fifthHorizontalStackView.addArrangedSubview(workImage)
        fifthHorizontalStackView.addArrangedSubview(workLabel)

        sixthHorizontalStackView.addArrangedSubview(giftImage)
        sixthHorizontalStackView.addArrangedSubview(giftLabel)

        seventhHorizontalStackView.addArrangedSubview(infoImage)
        seventhHorizontalStackView.addArrangedSubview(infoLabel)
    }

    private func setupLayout() {
        parentStackView.translatesAutoresizingMaskIntoConstraints = false
        parentStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18).isActive = true
        parentStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -18).isActive = true
        parentStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true

        firstVerticalStackView.translatesAutoresizingMaskIntoConstraints = false
        firstVerticalStackView.leadingAnchor.constraint(equalTo: firstHorizontalStackView.leadingAnchor, constant: 140).isActive = true
        firstVerticalStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        firstVerticalStackView.bottomAnchor.constraint(equalTo: editButton.topAnchor, constant: -40).isActive = true

        connectionLabel.translatesAutoresizingMaskIntoConstraints = false
        connectionLabel.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 16).isActive = true

        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true

        secondVerticalStackView.translatesAutoresizingMaskIntoConstraints = false
        secondVerticalStackView.widthAnchor.constraint(equalToConstant: 80).isActive = true

        thirdVerticalStackView.translatesAutoresizingMaskIntoConstraints = false
        thirdVerticalStackView.widthAnchor.constraint(equalToConstant: 80).isActive = true

        forthVerticalStackView.translatesAutoresizingMaskIntoConstraints = false
        forthVerticalStackView.widthAnchor.constraint(equalToConstant: 80).isActive = true

        fifthVerticalStackView.translatesAutoresizingMaskIntoConstraints = false
        fifthVerticalStackView.widthAnchor.constraint(equalToConstant: 80).isActive = true

        secondHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        secondHorizontalStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25).isActive = true
        secondHorizontalStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25).isActive = true


        avatar.translatesAutoresizingMaskIntoConstraints = false
        avatar.heightAnchor.constraint(equalToConstant: 120).isActive = true
        avatar.widthAnchor.constraint(equalToConstant: 120).isActive = true
        avatar.layer.masksToBounds = true
        avatar.layer.cornerRadius = 120 / 2

        cameraImage.translatesAutoresizingMaskIntoConstraints = false
        cameraImage.heightAnchor.constraint(equalToConstant: Metric.libraryHeightImage).isActive = true
        cameraImage.widthAnchor.constraint(equalToConstant: Metric.libraryWidthImage).isActive = true

        noteImage.translatesAutoresizingMaskIntoConstraints = false
        noteImage.heightAnchor.constraint(equalToConstant: Metric.libraryHeightImage).isActive = true
        noteImage.widthAnchor.constraint(equalToConstant: Metric.libraryWidthImage).isActive = true

        albumImage.translatesAutoresizingMaskIntoConstraints = false
        albumImage.heightAnchor.constraint(equalToConstant: Metric.libraryHeightImage).isActive = true
        albumImage.widthAnchor.constraint(equalToConstant: Metric.libraryWidthImage).isActive = true

        clipImage.translatesAutoresizingMaskIntoConstraints = false
        clipImage.heightAnchor.constraint(equalToConstant: Metric.libraryHeightImage).isActive = true
        clipImage.widthAnchor.constraint(equalToConstant: Metric.libraryWidthImage).isActive = true

        houseImage.translatesAutoresizingMaskIntoConstraints = false
        houseImage.heightAnchor.constraint(equalToConstant: Metric.infoHeightImage).isActive = true
        houseImage.widthAnchor.constraint(equalToConstant: Metric.infoWidthImage).isActive = true
        houseLabel.translatesAutoresizingMaskIntoConstraints = false
        houseLabel.leadingAnchor.constraint(equalTo: houseImage.trailingAnchor, constant: Metric.imageTrailingAncor).isActive = true

        subsImage.translatesAutoresizingMaskIntoConstraints = false
        subsImage.heightAnchor.constraint(equalToConstant: Metric.infoHeightImage).isActive = true
        subsImage.widthAnchor.constraint(equalToConstant: Metric.infoWidthImage).isActive = true
        subsLabel.translatesAutoresizingMaskIntoConstraints = false
        subsLabel.leadingAnchor.constraint(equalTo: subsImage.trailingAnchor, constant: Metric.imageTrailingAncor).isActive = true

        workImage.translatesAutoresizingMaskIntoConstraints = false
        workImage.heightAnchor.constraint(equalToConstant: Metric.infoHeightImage).isActive = true
        workImage.widthAnchor.constraint(equalToConstant: Metric.infoWidthImage).isActive = true
        workLabel.translatesAutoresizingMaskIntoConstraints = false
        workLabel.leadingAnchor.constraint(equalTo: workImage.trailingAnchor, constant: Metric.imageTrailingAncor).isActive = true

        giftImage.translatesAutoresizingMaskIntoConstraints = false
        giftImage.heightAnchor.constraint(equalToConstant: Metric.infoHeightImage).isActive = true
        giftImage.widthAnchor.constraint(equalToConstant: Metric.infoWidthImage).isActive = true
        giftLabel.translatesAutoresizingMaskIntoConstraints = false
        giftLabel.leadingAnchor.constraint(equalTo: giftImage.trailingAnchor, constant: Metric.imageTrailingAncor).isActive = true

        infoImage.translatesAutoresizingMaskIntoConstraints = false
        infoImage.heightAnchor.constraint(equalToConstant: Metric.infoHeightImage).isActive = true
        infoImage.widthAnchor.constraint(equalToConstant: Metric.infoWidthImage).isActive = true
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.leadingAnchor.constraint(equalTo: infoImage.trailingAnchor, constant: Metric.imageTrailingAncor).isActive = true
    }

    private func setupView() {
        view.backgroundColor = UIColor(red: 25/255, green: 25/255, blue: 27/255, alpha: 1)
    }

    // MARK: - Private functions

    private func addCornerRadius(for buttons: [UIButton]) {
        buttons.forEach {
            $0.layer.masksToBounds = true
            $0.layer.cornerRadius = Metric.buttonHeight / 2
        }
    }

    private func createImage(named: String) -> UIImageView {
        var image = UIImageView()

        image = UIImageView(image: UIImage(named: named))

        return image
    }

    private func createButton(with title: String, titleColor: UIColor, backgroundColor: UIColor, width: CGFloat, height: CGFloat) -> UIButton {
        let button = UIButton(type: .system)

        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 17, weight: .regular)
        button.backgroundColor = backgroundColor
        button.frame.size.width = Metric.buttonWidth
        button.frame.size.height = Metric.buttonHeight

        button.layer.masksToBounds = true
        button.layer.cornerRadius = Metric.buttonHeight / 3

        return button
    }

    private func createLabel(with text: String, textColor: UIColor, fontSize: CGFloat) -> UILabel {
        let label = UILabel()

        label.text = text
        label.textColor = textColor
        label.font = label.font.withSize(fontSize)

        return label
    }

    private func createHorizontalStackView(spacing: CGFloat) -> UIStackView {
        let hStackView = UIStackView()

        hStackView.axis = .horizontal
        hStackView.distribution = .equalSpacing
        hStackView.spacing = spacing

        return hStackView
    }

    private func createVerticalStackView(spacing: CGFloat, aligment: UIStackView.Alignment) -> UIStackView {
        let vStackView = UIStackView()

        vStackView.axis = .vertical
        vStackView.distribution = .equalSpacing
        vStackView.spacing = spacing
        vStackView.alignment = aligment

        return vStackView
    }
}

//MARK: - Constants

extension NewViewController {

    enum Alignment {
        static let center: UIStackView.Alignment = .center
        static let leading: UIStackView.Alignment = .leading

        static let distribution: UIStackView.Distribution = .fill
    }

    enum FontSize {
        static let online: CGFloat = 16
        static let name: CGFloat = 24
        static let status: CGFloat = 20
        static let library: CGFloat = 18
    }

    enum Metric {
        static let parentStackView: CGFloat = 30
        static let horizontalStackViewSpacing: CGFloat = 20

        static let verticalNameStackViewSpacing: CGFloat = 15
        static let verticalAlbumStackViewSpacing: CGFloat = 10
        static let verticalInfoStackViewSpacing: CGFloat = 20

        static let verticalStackViewWidth: CGFloat = 100

        static let imageWidth: CGFloat = 65
        static let imageHeight: CGFloat = 65
        static let imageTrailingAncor: CGFloat = 20

        static let buttonWidth: CGFloat = 200
        static let buttonHeight: CGFloat = 25

        static let nameLabel: CGFloat = 20
        static let statusLabel: CGFloat = 15
        static let connectionLabel: CGFloat = 13

        static let libraryWidthImage: CGFloat = 30
        static let libraryHeightImage: CGFloat = 30
        static let libraryLabelsFontSize: CGFloat = 18

        static let infoWidthImage: CGFloat = 25
        static let infoHeightImage: CGFloat = 25
        static let infoLabels: CGFloat = 22

    }

    enum Strings {
        static let buttonText: String = "Edit"
        static let nameLabel: String = "Alexey Pavlov"
        static let statusLabel: String = "Set status"
        static let connectionLabel: String = "online📱"
        static let cameraLabel: String = "History"
        static let noteLabel: String = "Notation"
        static let albumLabel: String = "Photo"
        static let clipLabel: String = "Clip"
        static let houseLabel: String = "City: Moscow"
        static let subsLabel: String = "35 subscribers"
        static let workLabel: String = "Add a job"
        static let giftLabel: String = "Take a present >"
        static let infoLabel: String = "Detailed information"
    }

    enum LabelColor{
        static let darkGreyColor: UIColor = .init(red: 43/255, green: 45/255, blue: 47/255, alpha: 1)
        static let blueLabelColor: UIColor = .init(red: 121/255, green: 167/255, blue: 222/255, alpha: 1)
        static let violetLabelColor: UIColor = .init(red: 102/255, green: 86/255, blue: 183/255, alpha: 1)
        static let greyLabelColor: UIColor = .gray
        static let whiteLabelColor: UIColor = .white
    }
}
