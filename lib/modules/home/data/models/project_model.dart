class ProjectModel {
    final String image;
  final String title;
  final String descreption, tool1, tool2, tool3;
  final void Function()? onTapGit;
  final void Function()? onTapDemo;

  ProjectModel({required this.tool2,required this.tool3, required this.tool1, required this.image, required this.title, required this.descreption, required this.onTapGit, required this.onTapDemo});
}