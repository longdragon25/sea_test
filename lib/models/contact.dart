class Contact {
  String avatarImage;
  String name;
  String phoneNumber;
  String email;
  Contact({
    required this.avatarImage,
    required this.name,
    required this.phoneNumber,
    required this.email,
  });

  static List<Contact> contacts = [
    Contact(
        avatarImage:
            'https://static.toiimg.com/thumb/resizemode-4,msid-76729750,imgsize-249247,width-720/76729750.jpg',
        name: 'Long Hoang',
        phoneNumber: '0943858308',
        email: 'longdragon@gmail.com'),
    Contact(
        avatarImage:
            'https://i.kinja-img.com/gawker-media/image/upload/t_original/ijsi5fzb1nbkbhxa2gc1.png',
        name: 'Hoang Long',
        phoneNumber: '0943858308',
        email: 'long123@gmail.com'),
    Contact(
        avatarImage:
            'https://www.nj.com/resizer/zovGSasCaR41h_yUGYHXbVTQW2A=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/SJGKVE5UNVESVCW7BBOHKQCZVE.jpg',
        name: 'Hoang Linh',
        phoneNumber: '0943858308',
        email: 'long456@gmail.com'),
    Contact(
        avatarImage:
            'https://cdn.mos.cms.futurecdn.net/HQBRR69rTKjho5qPhXxCrb.jpg',
        name: 'Linh Hoang',
        phoneNumber: '0943858308',
        email: 'long789@gmail.com'),
    Contact(
        avatarImage:
            'https://www.goodinfonet.com/uploads/news/goodinfonet_new_on_facebookavatar_1599045997_0.jpg',
        name: 'Hoang Huy',
        phoneNumber: '0943858308',
        email: 'long234@gmail.com'),
    Contact(
        avatarImage:
            'https://tecvase.com/wp-content/uploads/2021/04/Facebook-Avatar-App.jpg',
        name: 'Long Hoang',
        phoneNumber: '0943858308',
        email: 'long345@gmail.com'),
    Contact(
        avatarImage:
            'https://i0.wp.com/api.duniagames.co.id/api/content/upload/file/14055166521599123794.jpg?ssl=1',
        name: 'Long Hoang',
        phoneNumber: '0943858308',
        email: 'long2234@gmail.com'),
    Contact(
        avatarImage: 'https://pbs.twimg.com/media/EYVxlOSXsAExOpX.jpg',
        name: 'Long Hoang',
        phoneNumber: '0943858308',
        email: 'long2525@gmail.com'),
  ];
}
